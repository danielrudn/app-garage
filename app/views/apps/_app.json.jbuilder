json.extract! app, :id, :name, :rating, :release_date, :description, :downloads, :rated_times, :author, :version, :created_at, :updated_at
json.url app_url(app, format: :json)
