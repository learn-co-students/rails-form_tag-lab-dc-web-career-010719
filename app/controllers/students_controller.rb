class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    get_student
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(student)
  end

  def to_s
    get_student
    "#{@student.first_name} #{@student.last_name}"
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

end
