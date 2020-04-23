json.extract! drop, :id, :name, :item_level, :description, :task_item, :location_id, :created_at, :updated_at
json.url drop_url(drop, format: :json)
