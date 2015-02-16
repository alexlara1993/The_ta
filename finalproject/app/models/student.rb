class Student < ActiveRecord::Base
	belongs_to :class_room
	# has_many :class_rooms
	# has_many :teachers, through: :class_rooms
end
