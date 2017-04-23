require 'rails_helper'

RSpec.describe Match, type: :model do

  describe "create matches method" do
    before { login_as admin }

    let(:admin) { create :user, admin: true }
    let!(:student_1) { create :user }
    let!(:student_2) { create :user }

    it "creates a match" do
      match = Match.create(date: Date.today, student_1: student_1, student_2: student_2)
      match.should be_a(Match)
    end
  end
end
