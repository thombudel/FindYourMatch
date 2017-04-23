class Match < ApplicationRecord
  belongs_to :student_1, :class_name => 'User'
  belongs_to :student_2, :class_name => 'User'


  def self.create_matches
    students = User.where(admin: false).order("RANDOM()")

    unmatched_students = students.select do |student|
      !student.has_match?
    end

    Match.create(student_1: unmatched_students.first,
    student_2: unmatched_students.second,
    date: Date.today
    )
  end
end
