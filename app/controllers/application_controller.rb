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
    #returns memberships from all gyms
    memberships = Membership.gym_and_tier_names
    memberships.to_json
  end

  delete '/memberships/:id' do
    membership = Membership.find params[:id]
    membership.destroy
  end

  get '/gyms/:id/memberships/:memb_id' do
    gym = Gym.find params[:id]
    memberships = gym.memberships.all
    membership = memberships.find params[:memb_id]
    membership.to_json
  end

end