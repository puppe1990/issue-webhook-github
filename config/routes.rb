Rails.application.routes.draw do
  post 'issues', as: 'validate_issues', controller: 'issues'
  get 'repositories/:id/issues', as: 'repositories_issues', action: :repositories_issues, controller: 'issues', :defaults => { :format => 'json' }
  get 'issues/:id', as: 'list_issues', action: :list_issues, controller: 'issues', :defaults => { :format => 'json' }
  get 'issues', as: 'view_issues', action: :view_issues, controller: 'issues'
end
