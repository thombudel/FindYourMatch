require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user sign in/up validations" do
    it "is invalid without an email address" do
      user = User.new(email: "")
      user.valid?
      expect(user.errors).to have_key(:email)
    end

    it "is invalid without a password" do
      user = User.new(password: "")
      user.valid?
      expect(user.errors).to have_key(:password)
    end

    it "is invalid with a password short than 6 characters" do
      user = User.new(password: "Hey1")
      user.valid?
      expect(user.errors).to have_key(:password)
    end
  end
end
