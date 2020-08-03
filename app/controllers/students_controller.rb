class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    Student.create(student_name: params[:student][:first_name], student_name: params[:student][:last_name], description: params[:post][:description])
     redirect_to posts_path
  end
end
