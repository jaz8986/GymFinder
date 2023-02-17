class Membership < ActiveRecord::Base
    belongs_to :gym
    has_many :attached_members
    belongs_to :tier

end