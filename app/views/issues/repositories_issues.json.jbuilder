json.array! @issues do |issue|
  json.id issue.issue_id
  json.action issue.action
  json.repository_id issue.repository_id
  json.repository_name issue.repository_name
  json.owner_name issue.owner_name
  json.created_at issue.created_at
  json.updated_at issue.updated_at
end
