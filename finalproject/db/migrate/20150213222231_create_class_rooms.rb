class CreateClassRooms < ActiveRecord::Migration
  def change
   create_table :class_rooms do |t|
   	t.string :name
   	t.timestamps null: false

   	t.references :student
   	t.references :teacher
   end
  end

end
