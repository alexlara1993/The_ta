class AddClassRoomIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :class_room_id, :integer
  end
end
