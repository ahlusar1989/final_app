class CommentsController < ApplicationController

http_basic_authenticate_with name: "dhh", password: "encrypted_password", only: :destroy 
		
def create
    @assignment = Assignment.find(params[:assignment_id])
    @comment = @assignment.comments.create(comment_params)
    @course = @assignment.course
    redirect_to "/courses/#{@course.id}/assignments/#{@assignment.id}"
end

def destroy
	@assignment = Assignment.find(params[:assignment_id])
	@comment = @assignment.comments.find(params[:id])
	comment.destroy
	redirect_to assignment_path(@assignment)
end

  private
    def comment_params
      params.require(:comment).permit(:questions, :comments)
    end
end
