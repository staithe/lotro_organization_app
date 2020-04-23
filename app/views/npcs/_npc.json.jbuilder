json.extract! npc, :id, :name, :level, :kind_id, :drop_id, :location_id, :morale, :power, :deed_id, :created_at, :updated_at
json.url npc_url(npc, format: :json)
