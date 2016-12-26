class UsersController < ApplicationController
before_action :get_user, only:[:edit, :update, :show]

def index
  @users = User.all
  
end
  def new
    @user = User.new
    
  end

  def show

    
  end

  def create

    @user = User.new(user_params)

    if @user.save
      flash[:success] = "User created successfully. Welcome #{user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
    
  end
  def edit

  end
  def update
    if @user.update(user_params)
      flash[:success] = "User credentials successfully updated"
      redirect_to articles_path
    else
      render 'edit'
    end
    
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)

  end
  def get_user
    @user = User.find(params[:id])
    
  end
end