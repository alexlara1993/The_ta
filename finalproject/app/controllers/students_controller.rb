class StudentsController < ApplicationController
	before_action :set_class_room


  def create
    @student = @class_room.students.create(student_params)
    redirect_to @class_room
  end

  private

  def set_class_room
    @class_room = ClassRoom.find(params[:class_room_id])
  end

  def student_params
    params[:student].permit(:first_name, :last_name)
  end
end
