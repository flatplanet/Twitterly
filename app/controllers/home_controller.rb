class HomeController < ApplicationController
  def index
    @whatevs = User.find_by(id: current_user)  
  end
  
  def users
    @users = User.order(:user_name)
    @tweets = Tweet.all
  end
  
  def user_tweets
    @item = params['item']
    @whatevs = User.find_by(user_name: @item)  
    @tweets = Tweet.all
    @users = User.all
    
  end
  

end
