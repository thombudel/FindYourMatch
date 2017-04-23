require 'rails_helper'

describe "list of all users" do
  before { login_as admin }

  let(:admin) { create :user, admin: true }
  let!(:student_1) { create :user }
  let!(:student_2) { create :user }

  it "lists all signed up users and shows their name and email" do
    visit admin_users_url
    expect(page).to have_text(admin.name)
    expect(page).to have_text(admin.email)
    expect(page).to have_text(student_1.name)
    expect(page).to have_text(student_2.name)
    expect(page).to have_text(student_1.email)
    expect(page).to have_text(student_2.email)
  end
end
