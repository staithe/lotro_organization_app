class Location < ApplicationRecord
    has_many :npc
    has_many :deed
    has_many :drop
end
