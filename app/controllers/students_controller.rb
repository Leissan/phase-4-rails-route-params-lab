class StudentsController < ApplicationController

  def index
    students = Student.find_by(last_name: params[:last_name])
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    if student
      render json: student
    else
      render json: {error: "Student not found"}
    end
  end

end
