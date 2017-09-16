class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]
  before_action :authorize_user, only: [:destroy]


  def create
  	comment = Comment.new(comment_params)
  	comment.user = current_user
  	comment.save

  	return redirect_to post_path(comment.post_id)
  end

  def destroy
  	post = @comment.post
  	@comment.destroy

  	return redirect_to post_path(post.id)

  end

  private
  	def set_comment
      @comment = Comment.find(params[:id])
    end

	def authorize_user
	  if current_user != @comment.user
	    return redirect_to root_path
	  end
	  return true
	end

   def comment_params
      params.require(:comment).permit(:post_id, :content)
	end

end
