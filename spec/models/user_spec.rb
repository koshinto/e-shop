require 'rails_helper'

RSpec.describe User, type: :model do
  # first name, last nameを追加、テストして完成。
  it "is valid with a first name, last name, email, and password" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is invalid without a first name"

  it "is invalid without a last name"

  it "is invalid without a email address" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    FactoryBot.create(:user, email: "duplicate@example.com")
    user = FactoryBot.build(:user, email: "duplicate@example.com")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
end
