class StudentCoursesController < ApplicationController

  def index
    render :index, locals: { student_courses: StudentCourse.where(student: current_student) }
  end

  def create
    student = Student.find(params.dig(:student_course, :student))
    course = Course.find(params.dig(:student_course, :course))
    student_course = StudentCourse.new(student: student, course: course)

    if student_course.save
      redirect_to student_courses_path, notice: 'You have successfully enrolled in the course.'
    else
      redirect_to courses_path, alert: 'An error has occurred.'
    end
  end

  def destroy
    student_course.destroy

    redirect_to student_courses_path, notice: 'You have successfully signed off the course.'
  end

  private

  def student_course
    @student_course ||= StudentCourse.find(params[:id])
  end
end
