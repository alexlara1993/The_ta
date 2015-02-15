class Student < ActiveRecord::Base
	has_many :class_rooms
	has_many :teachers, through: :class_rooms
end
