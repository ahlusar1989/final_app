class AssignmentsController < ApplicationController


before_action :authenticate_user!, only: [:new, :edit, :destroy]
def index
	@assignments = Assignment.all 
	@course = Assignment.new
	@course = Assignment.all
end

def show
  @comment = Comment.new(:assignment => @assignment)
  @assignment= Assignment.find(params[:id])
  @assignments = Assignment.all
  @course = Course.find(params[:course_id])
 
end

def new
	@assignment = Assignment.new
end

def create
  assignments_params = params.require(:assignment).permit(:due_date, :date_assigned, :assignment_type).merge(course_id: params[:course_id])
  @course = Course.find params[:course_id]
  @assignment = Assignment.create(assignments_params)
	@assignment.save
  redirect_to @course
end


def edit
 	@assignment= Assignment.find(params[:id])
	end

def update
    @assignment = Assignment.find(params[:id])
 
  if @assignment.update(assignment_params)
    redirect_to @assignment
  else
    render 'edit'
  end
end


def destroy
	@assignment = assignment.find(params[:id])
	@assignment.destroy
	redirect_to assignment_path
end


def redirect
    @assignment= assignment.find_by_assignment(params[:assignment_type, :date_assigned, :due_date])
    redirect_to @assignment
end

# @assignment= Assignment.new(params[:assignment])

# 		if @assignment.save
# 			redirect_to @assignment
# 		else
# 			render 'new' 
# 	end

private

 def assignment_params
    params.require(:assignment).permit(:due_date, :date_assigned, :assignment_type)
  end

 def comment_params
    params.require(:comment).permit(:questions, :comments)
  end

end


#  def update
# 	  @assignment = Assignment.find(params[:id])
# 	  if @assignment.update(assignment_params)
# 	    redirect_to @assignment
# 	  else
# 	    render :action => 'edit'
# 	  end
# end
 

