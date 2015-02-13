class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.string :name
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
