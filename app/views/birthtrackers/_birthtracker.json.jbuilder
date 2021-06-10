json.extract! birthtracker, :id, :first_name, :last_name, :email, :birthdate, :created_at, :updated_at
json.url birthtracker_url(birthtracker, format: :json)
