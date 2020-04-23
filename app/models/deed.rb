class Deed < ApplicationRecord
    belongs_to :location
    has_many :npc
end
