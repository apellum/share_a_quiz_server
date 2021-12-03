require 'rails_helper'

RSpec.describe Question, type: :model do

  it "exist" do
    expect {Question}.to_not raise_error
  end

  it "has a question and answer" do
    question = Question.new(question: "What type of plant is best to use on burns?", answer: "Aloe")
    expect(question.question).to eq("What type of plant is best to use on burns?")
    expect(question.answer).to eq("Aloe")
  end

  context "validating a question" do
    before(:each) do
      @question1 = Question.new(question: "What type of plant is best to use on burns?", answer: "Aloe")
    end

    it "requires a question" do
      @question1.question = nil
      expect(@question1).to_not be_valid
    end

    it "requires an answer" do
      @question1.answer = nil
      expect(@question1).to_not be_valid
    end
  end