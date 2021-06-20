class CommentsController < ApplicationController
  def create
    tourist=Tourist.find(params[:tourist_id])
    comment=current_user.comments.new(comment_params)
    comment.tourist_id=tourist.id
    comment.save
    redirect_to tourist_path(tourist)
  end

  def destroy
    Comment.find_by(id:params[:id],tourist_id:params[:tourist_id]).destroy
    redirect_to tourist_path(params[:tourist_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
