class CommentsController < ApplicationController
  def index
  end
  def new
    @page = "改善要求"
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to dries_path
    else
      flash.now[:alert] = @comment.errors.full_messages
      render :new
    end

  end
  def edit
  end
  def update
  end
  def show
  end
  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :title, :body, :end_flag)
  end

end
