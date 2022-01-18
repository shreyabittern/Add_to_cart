json.extract! product, :id, :name, :price, :image, :category_id, :description, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
