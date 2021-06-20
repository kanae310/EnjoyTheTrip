class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @tourists=Tourist.where(user_id: @user.id)
  end

  def index
    @users=User.all
  end

  def edit
    @user=User.find(params[:id])
    if @user == current_user
         render :edit
    else
       redirect_to user_path(current_user)
    end
  end

  def update
     @user=User.find(params[:id])
     @user.update(user_params)
     redirect_to user_path(current_user)
  end
end
