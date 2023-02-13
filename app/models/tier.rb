class Tier < ActiveRecord::Base
    belongs_to :gym
    has_many :memberships, through: :gym
end