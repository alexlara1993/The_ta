require 'bcrypt'
class Teacher < ActiveRecord::Base
  # has_many :class_rooms
  # has_many :students, through: :class_rooms

  BCrypt::Engine.cost = 12

  attr_reader :password
  validates_confirmation_of :password
  validates_presence_of :password_digest

  def authenticate(unencrypted_password)
    if BCrypt::Password.new(password_digest) == unencrypted_password
      self
    else
  	  false
    end
  end

  def password=(unencrypted_password)
    if unencrypted_password.nil?
      self.password_digest = nil
    else 
      @password = unencrypted_password 
      self.password_digest = BCrypt::Password.create(@password)
    end
  end

  def self.confirm(email_param, password_param)
    teacher = Teacher.find_by({email: email_param})
    teacher.authenticate(password_param)
  end
end