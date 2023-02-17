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

  get '/tiers' do
    tiers = Tier.all
    tiers.to_json
  end
  
  delete '/memberships/:id' do
    membership = Membership.find params[:id]
    membership.destroy
  end

  post '/memberships' do
    new_membership = Membership.create(params)
    new_membership.to_json
  end

end