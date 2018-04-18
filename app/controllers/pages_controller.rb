#contains all the code for any page inside /pages
class PagesController < ApplicationController
  #backend code for pages/index
  def index

  end
  #backend code for pages/home
  def home
    @posts = Post.all
    @newPost = Post.new
  end
  #backend code for pages/profile
  def profile
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
  end
  #backend code for pages/explore
  def explore
    @posts = Post.all
  end
end
