class CreateClassRooms < ActiveRecord::Migration
  def change
   create_table :class_rooms do |t|
   	t.string :name
   	# t.references :teacher, index: true
   	t.timestamps null: false
   	# t.references :student
   	# t.references :teacher
   end
   # add_foreign_key :teachers, :class_rooms
  end

end
