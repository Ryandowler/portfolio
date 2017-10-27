json.extract! project, :id, :title, :body, :image, :created_at, :updated_at
json.url project_url(project, format: :json)
