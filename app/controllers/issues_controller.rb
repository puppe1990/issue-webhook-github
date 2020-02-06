# Class to control issues webhooks from github repository
class IssuesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def issues
    if request.headers['Content-Type'] == 'application/json'
      @data = JSON.parse(request.body.read)
    else
      @data = params.as_json
    end
    create
    render nothing: true
  end

  def repositories_issues
    respond_to do |format|
      format.html
      format.json do
        @issues = Issue.where(repository_id: params[:id])
      end
    end      
  end 
  
  def list_issues
    respond_to do |format|
      format.html
      format.json do
        @issues = Issue.where(issue_id: params[:id])
      end
    end
  end

  def view_issues
    if params[:id]
      @issues = Issue.where(issue_id: params[:id])
    else
      @issues = Issue.all
    end
  end  

  private
  def create
    @issue = Issue.new(data: @data, 
                       issue_id: @data['issue']['id'], 
                       repository_id: @data['repository']['id'],
                       action: @data['action'],
                       repository_name: @data['repository']['url'],
                       owner_name: @data['issue']['user']['html_url']
                      )
    @issue.save
  end
  def issue_params
    params.require(:issue).permit(:id)
  end
end
