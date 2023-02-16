class Membership < ActiveRecord::Base
    belongs_to :gym
    belongs_to :attached_member
    belongs_to :tier

    def self.gym_and_tier_names
        self.all.map do |m|
            {
                id: m.id,
                gym: m.gym.name,
                tier: m.tier.name_of_tier,
                name: m.name,
                email: m.email,
                phone: m.phone,
                attached_member: m.attached_member.name,
            }
        end
    end
end