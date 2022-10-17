class CoursesController < ApplicationController
  before_action :authenticate_student!

  def index
    render :index, locals: { courses: Course.all }
  end

  def show


  end

  def new

  end

end
