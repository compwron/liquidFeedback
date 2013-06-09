require_relative "../lib/voter"

describe Voter do

  subject { Voter.new }

    it "should have a vote" do
    	subject.vote.should not_be_nil
    end
end
