class StudentsController < ApplicationController
	before_action :set_class_room


  def create
    @student = @class_room.students.create(student_params)
    redirect_to @class_room
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @student = Student.find(params[:id])
    @student.add_or_update_evaluation(:votes, value, @student)
    redirect_to :back, notice: "point added"
  end

  private

  def set_class_room
    if params[:class_room_id]
      @class_room = ClassRoom.find(params[:class_room_id])
    end
  end

  def student_params
    params[:student].permit(:first_name, :last_name)
  end
end
