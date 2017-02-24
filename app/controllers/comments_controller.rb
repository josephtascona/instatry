class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @photo = Photo.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :user_id, :photo_id)
  end
end
