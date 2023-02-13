class Membership < ActiveRecord::Base
    belongs_to :gym
    belongs_to :attached_member
    belongs_to :tier
end