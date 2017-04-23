class Match < ApplicationRecord
  belongs_to :student_1, :class_name => 'User'
  belongs_to :student_2, :class_name => 'User'

  @all_students = User.where(admin: false).order("RANDOM()")

  def self.previous_matches
    @previous_matches = Array.new
    all.each do |match|
      @previous_matches << [match.student_1, match.student_2]
    end
    return @previous_matches
  end

  def self.create_matches
    available_students = @all_students.select { |student| !student.has_match? }

    Match.create(student_1: available_students.first,
    student_2: available_students.second,
    date: Date.today)
  end
end
