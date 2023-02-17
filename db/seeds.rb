Gym.destroy_all
Membership.destroy_all
Tier.destroy_all
AttachedMember.destroy_all

#Gym
Gym.create(
    name: "Zoo Culture",
    address: "16571 Ventura Blvd, Encino, CA 91436",
    image: "https://pbs.twimg.com/profile_images/809583197637853185/bXWn0hrQ_400x400.jpg",
    rating: "4.6"
)

Gym.create(
    name: "Life Time",
    address: "1435 E Roseville Pkwy, Roseville, CA 95661",
    image: "https://i.pinimg.com/736x/4a/44/58/4a44580ac1ed3ccbf05f5e72ee10d5b3.jpg",
    rating: "4.5"

)

#Tier
Tier.create(
    gym_id: Gym.first.id,
    name_of_tier: "Monthly",
    description: "Monthly payment of $125. All Amenities included."
)

Tier.create(
    gym_id: Gym.first.id,
    name_of_tier: "Yearly",
    description: "Yearly payment of $1380. All Amenities included."
)

Tier.create(
    gym_id: Gym.second.id,
    name_of_tier: "Signature",
    description: "Monthly payment of $219. Unlimited Club Access and amenities."
)

Tier.create(
    gym_id: Gym.second.id,
    name_of_tier: "Standard",
    description: "Monthly payment of $179. Unlimited Club Access. Limited Amenities such as group training."
)


#Membership
20.times do
    Membership.create(
        gym_id: Gym.first.id,
        tier_id: Tier.first.id,
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone.to_s
    )
end

20.times do
    Membership.create(
        gym_id: Gym.second.id,
        tier_id: Tier.fourth.id,
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone.to_s
     )
end

#AttachedMembers
40.times do 
    AttachedMember.create(
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.cell_phone.to_s,
        membership_id: Membership.all.sample.id
    )
end
