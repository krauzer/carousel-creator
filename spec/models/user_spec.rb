require 'spec_helper'

describe User, type: :model do

  it "is invalid without an email address" do
    user = build(:user, email: nil)
    expect(user).to be_invalid
  end

  it "is invalid without a password" do
    user = build(:user, password_hash: nil)
    expect(user).to be_invalid
  end

end