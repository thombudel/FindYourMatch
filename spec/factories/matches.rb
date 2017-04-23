FactoryGirl.define do
  factory :match do
    date        { Date.today }
    student_1   { build(:user)}
    student_2   { build(:user)}
  end
end
