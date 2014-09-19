class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @video = Video.find(params[:video_id])
    @comment.video = @video

    if @comment.save
      redirect_to @video, notice: 'Comment created.'
    else
      flash[:notice] = 'Comment could not be saved.'
      render 'videos/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
