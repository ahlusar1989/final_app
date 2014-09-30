class CoursesController < ApplicationController

def index
	@courses = Course.all
	@course = Course.new
	end

def new
	@course= Course.new
	end

def create
	 @course = Course.new(course_params)

	 @course.save
	 redirect_to @course	
end


def edit
 	@course= Course.find(params[:id])
	end

def update
  @course = Course.find(params[:id])
 
  if @course.update(course_params)
    redirect_to @course
  else
    render 'edit'
  end
end


def show
	@course = Course.find params[:id]
	@courses = Course.all
  @assignment = Assignment.new
  @course_assignments = @course.assignments
end

def destroy
  @course = Course.find(params[:course_id])
  @course.destroy

  redirect_to courses_path
end


  def redirect
    @course= course.find_by_course(params[:name])
    redirect_to @course
  end

private
  def course_params
    params.require(:course).permit(:name)
  end
 
end