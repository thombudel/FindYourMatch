require 'rails_helper'

describe "student sees match of the day" do
  before { login_as student_1 }

  let(:student_1) { create :user }
  let(:student_2) { create :user }

  let!(:match) { create :match, student_1: student_1, student_2: student_2 }

  it "shows current match of student" do
    visit student_matches_url
    expect(page).to have_text("Today you will work with: #{student_2.name}")
  end
end
