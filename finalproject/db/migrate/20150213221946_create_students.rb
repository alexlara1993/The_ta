class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :class_room, index: true
      t.timestamps null: false
      
    end
    # add_foreign_key :students, :class_rooms
  end
end
