json.extract! jobs_app, :id, :title, :description, :status, :created_at, :updated_at
json.url jobs_app_url(jobs_app, format: :json)
