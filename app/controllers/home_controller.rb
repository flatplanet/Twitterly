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
    @tweets = Tweet.all
    @users = User.all
    #@fart = @users.find(params[:item])
  end
  

end
