class ApplicationController < Sinatra::Base

  get '/gyms' do
    gyms = Gym.all
    gyms.to_json
  end

  get '/gyms/:id' do 
    gym = Gym.find params[:id]
    gym.to_json
  end

  get '/memberships' do 
    #returns memberships from all gyms with strings instead of ids
    memberships = Membership.all
    memberships.to_json
  end

  get '/memberships/:id' do
    membership = Membership.find params[:id]
    membership.to_json
  end

  get '/tiers' do
    tiers = Tier.all
    tiers.to_json
  end
  
  delete '/memberships/:id' do
    membership = Membership.find params[:id]
    membership.destroy
  end

  post '/memberships' do
    gym = Gym.find_by(name: params[:gym_id]).id
    tier = Tier.find_by(name_of_tier: params[:tier_id]).id

    new_membership = Membership.create(
      gym_id: gym,
      tier_id: tier,
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
    )
    new_membership.to_json
  end

  post '/gyms/new' do
    newGym = Gym.create(
      name: params[:name],
      address: params[:address],
      image: params[:image],
      rating: "Not yet Available"
    )
    newGym.to_json
  end

  patch '/memberships/:id' do 
    membership = Membership.find params[:id]
    membership.update(
        name: params[:name],
        email: params[:email],
        phone: params[:phone]
      )
    membership.to_json
    end 

end