class Gym < ActiveRecord::Base
    has_many :memberships
    has_many :attached_members, through: :memberships
    has_many :tiers, through: :attached_members
end