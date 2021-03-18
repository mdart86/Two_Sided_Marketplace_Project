json.extract! product, :id, :name, :description, :price, :condition, :scale, :aircraft_model, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
