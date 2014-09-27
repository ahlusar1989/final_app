class CommentsController < ApplicationController

		
def create
    @assignment = Assignment.find(params[:assignment_id])
    @comment = @assignment.comments.create(comment_params)
    redirect_to assingment_path(@assignment)

	if user_signed_in?
	safe_comment = params.require(:user).permit(:post).merge(user_id: params[:user_id])
	@comment = current_user.comments.create safe_comment
	redirect_to @comment.assignment		
	else
	redirect_to new_user_session_path, alert: "Only logged in users can comment. Please ensure that you are a , before your next attempt"
		end
	end
end



 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
