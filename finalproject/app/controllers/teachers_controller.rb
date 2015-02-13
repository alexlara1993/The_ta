class TeachersController < ApplicationController
	before_action :logged_in?, only: [:show]


  def new
     @teacher = Teacher.new
  end

  def create
     @teacher = Teacher.create(teacher_params)
     if @teacher.save
        flash[:success] = "Welcome to the Sample App!"
        redirect_to login_path
        # redirect_to teacher_path(@teacher.id)
     else render 'new'
     end
  end

  def show
  end

private

   def teacher_params
     params.require(:teacher).permit(:email, :password)
   end


end
