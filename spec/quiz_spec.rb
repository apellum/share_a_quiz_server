require 'rails_helper'

RSpec.describe Quiz, type: :model do

  it "exist" do
    expect {Quiz}.to_not raise_error
  end

  it "has a title and category" do
    quiz = Quiz.new(title: "Plants Quiz", category: "science")
    expect(quiz.title).to eq("Plants Quiz")
    expect(quiz.category).to eq("science")
  end

  context "validating a quiz" do
    before(:each) do
      @plants = Quiz.new(title: "Plants Quiz", category: "science")
    end

    it "requires a title" do
      @plants.title = nil
      expect(@plants).to_not be_valid
    end

    it "requires a category" do
      @plants.category = nil
      expect(@plants).to_not be_valid
    end
  end

#   context "deleting a quiz" do
#     before(:each) do
#         @quiz = Quiz.new(title: "School", category: "math")
#     end

#     it "deletes a quiz" do
#         @quiz.destroy
#         binding.pry
#         expect(@quiz.id).to eq(nil)
#     end
#   end

end