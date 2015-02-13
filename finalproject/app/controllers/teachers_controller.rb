class TeachersController < ApplicationController
	before_action :logged_in?, only: [:show]


  def new
     @teacher = Teacher.new
  end

  def create
     @teacher = Teacher.create(teacher_params)
     redirect_to teacher_path(@teacher.id)
  end

  def show
  end

private

   def teacher_params
     params.require(:teacher).permit(:email, :password)
   end


end
