require 'rails_helper'

RSpec.describe User, type: :model do

  it "exist" do
    expect {User}.to_not raise_error
  end

  it "has a name, dob, email, and password" do
    user = User.new(name: "Hank Johnson", email: "hank@quizzes.com", password: "password", date_of_birth: 01/01/1990)
    expect(user.name).to eq("Hank Johnson")
    expect(user.date_of_birth).to eq(01/01/1990)
    expect(user.email).to eq("hank@quizzes.com")
    expect(user.password).to eq("password")
  end

  context "validating a user" do
    before(:each) do
      @hank = User.new(name: "Hank Johnson", email: "hank@quizzes.com", password: "password", date_of_birth: 01/01/1990)
    end

    it "requires a name" do
      @hank.name = nil
      expect(@hank).to_not be_valid
    end

    it "requires a date of birth" do
      @hank.date_of_birth = nil
      expect(@hank).to_not be_valid
    end

    it "requires an email" do
      @hank.email = nil
      expect(@hank).to_not be_valid
    end
    
    it "requires a password" do
      @hank.password = nil
      expect(@hank).to_not be_valid
    end
  end

end