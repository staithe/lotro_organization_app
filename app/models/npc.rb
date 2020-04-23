class Npc < ApplicationRecord
belongs_to :kind
has_many :drop
belongs_to :location
belongs_to :deed

end
