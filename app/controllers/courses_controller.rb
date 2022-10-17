class CoursesController < ApplicationController

  def index
    render :index, locals: { courses: Course.all }
  end

  def show


  end

  def new

  end

end
