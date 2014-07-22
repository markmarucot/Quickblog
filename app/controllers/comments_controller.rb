class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(user_params)
    redirect_to @post
  end  
  def user_params
    params.require(:comment).permit(:comment)
  end  
end
