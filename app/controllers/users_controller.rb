class UsersController < ApplicationController
  
 
  def index
    @users = User.all
  end
  
   def destroy
    @user = User.find(params[:id])
    @user.destroy_user_session_path
    redirect_to root_path
   end
  
  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts
  end
end
