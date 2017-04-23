class Match < ApplicationRecord
  belongs_to :student_1, :class_name => 'User'
  belongs_to :student_2, :class_name => 'User'

  @all_students = User.where(admin: false).order("RANDOM()")

  def self.create_matches
    available_students = @all_students.select do |student|
        !student.has_match?
    end
    Match.create(student_1: available_students.first,
    student_2: available_students.second,
    date: Date.today)
  end
end
