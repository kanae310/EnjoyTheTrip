class TouristsController < ApplicationController
  def new
    @tourist=Tourist.new
  end

  def show
    @tourist=Tourist.find(params[:id])
    @user=@tourist.user
    @comment=Comment.new
  end

  def index
    @user=current_user
    @tourists=Tourist.all
  end

  def create
    @tourist=Tourist.new(tourist_params)
    @tourist.user_id=current_user.id
    if @tourist.save
      redirect_to tourist_path(@tourist.id)
    else
      render "new"
    end
  end

  private
  def tourist_params
    params.require(:tourist).permit(:title,:prace,:impression,:image)
  end
end
