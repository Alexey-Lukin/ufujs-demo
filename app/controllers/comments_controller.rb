class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy, :show]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    image = params[:comment][:image]
    if image.is_a?(Array)
      image.each do |i|
        File.open(i.original_filename, "wb") { |f| f.write(i.read) }
      end
    else
      File.open(image.original_filename, "wb") { |f| f.write(image.read) }
    end
    @comment = Comment.create(comment_params)
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
