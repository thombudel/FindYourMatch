class Match < ApplicationRecord
  belongs_to :student_1, :class_name => 'User'
  belongs_to :student_2, :class_name => 'User'

  def students
    User.where(id: self.user_id).or(User.where(id: self.matched_user_id))
  end

end
