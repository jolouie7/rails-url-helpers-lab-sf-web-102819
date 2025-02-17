class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if !@student.active
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to "/students/#{params[:id]}"
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end

end