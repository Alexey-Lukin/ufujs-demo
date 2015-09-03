class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy, :show]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    binding.pry
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
