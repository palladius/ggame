class UsersController < ApplicationController
  before_filter :login_required, :except => [:index, :new , :create ]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  # This is just a Hall of fame!
  def index 
    @users = User.all # (params[:user])
    # sort by score
  end
  
  def show
    #@user = User.new(params[:user])
    @user = User.find(params[:id])
  end
  
end
