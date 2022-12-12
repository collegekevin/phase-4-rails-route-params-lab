class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def just_one
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
