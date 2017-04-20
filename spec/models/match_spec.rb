require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "association with user" do
    let!(:user) { create :user }
    let(:match) { create :match, user: user }

    it "is invalid without a student" do
      expect(user.errors).to_not have_key(:student_1_id)
    end
  end
end
