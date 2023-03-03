class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @students = Student.all
    render json: @students
  end

  def show
  end

  def new
    @student = Student.new()
  end

  def create
    
    @student = Student.new(student_params)
    @student.save
  

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  
    @student = Student.find(params[:id])
    @student.update(student_params)
    render json: @student
  end

  def destroy
    
    Student.find(params[:id]).destroy
  end
  private
  def student_params
    params.require(:student).permit(:name,:rollno,:percentage)
  end
  
end
