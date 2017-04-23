require 'rails_helper'

describe "student viewing previous matches" do
  before { login_as student_1 }

  let(:student_1) { create :user }
  let(:student_2) { create :user }
  let(:student_3) { create :user }

  let!(:previous_match_1) { create :match, date: "10-04-2017", student_1: student_1, student_2: student_2 }
  let!(:previous_match_2) { create :match, date: "11-04-2017", student_1: student_1, student_2: student_3 }

  it "lists previous matches of student" do
    visit student_matches_url
    expect(page).to have_text("10-04-2017 #{student_1.name} and #{student_2.name}")
    expect(page).to have_text("11-04-2017 #{student_1.name} and #{student_3.name}")
  end
end
