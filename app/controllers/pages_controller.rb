#contains all the code for any page inside /pages
class PagesController < ApplicationController
  #backend code for pages/index
  def index
  end
  #backend code for pages/home
  def home
  end
  #backend code for pages/profile
  def profile
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
  end
  #backend code for pages/explore
  def explore
  end
end
