require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(params) }
  let(:params) { {
    email:    "tester@example.com",
    password: "rXyaKacBjWw7",
    } }

  # first name, last nameを追加、テストして完成。
  it "is valid with a first name, last name, email, and password" do
    expect(user).to be_valid
  end

  it "is invalid without a first name"

  it "is invalid without a last name"

  it "is invalid without a email address" do
    params.store(:email, nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
      email: "tester@example.com",
      password: "rXyaKacBjWw7",
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "returns a user's full name as a string"
end
