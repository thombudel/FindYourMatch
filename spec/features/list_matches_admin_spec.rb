require 'rails_helper'

describe "admin sees lists of all matches" do
  before { login_as admin }

  let(:admin) { create :user, admin: true }
  let(:student_1) { create :user }
  let(:student_2) { create :user }
  let(:student_3) { create :user }
  let(:student_4) { create :user }

  let!(:match_1) { create :match, student_1: student_1, student_2: student_2 }
  let!(:match_2) { create :match, student_1: student_3, student_2: student_4 }

  it "lists all matches" do
    visit admin_matches_url
    expect(page).to have_text("#{student_1.name} and #{student_2.name}")
    expect(page).to have_text("#{student_3.name} and #{student_4.name}")
  end
end
