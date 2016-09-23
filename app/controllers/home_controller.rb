class HomeController < ApplicationController
  def index
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
