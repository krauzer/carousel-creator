require 'spec_helper'

describe User, type: :model do

  it "is invalid without an email address" do
  user = build(:user)
   expect {user.email = nil}.to change{user.valid?}.from(true).to(false)
  end

  it "is invalid without a password" do
    user = build(:user)
    expect {user.password_hash = nil}.to change{user.valid?}.from(true).to(false)
  end

end