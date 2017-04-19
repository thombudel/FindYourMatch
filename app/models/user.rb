class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, :class_name => 'Match', :foreign_key => 'student_1'
  has_many :matches, :class_name => 'Match', :foreign_key => 'student_2'
end
