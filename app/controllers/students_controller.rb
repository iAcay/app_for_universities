class StudentsController < ApplicationController
  
  def index
    render :index, locals: { students: Student.all }
  end

  def show
    render :show, locals: { student: student }
  end

  private

  def student
    @student ||= Student.find(params[:id])
  end
end
