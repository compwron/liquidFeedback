require_relative "../lib/vote"
require_relative "../lib/topics"
require_relative "../lib/bills"

describe Vote do

  subject { Vote.new Topics.Healthcare }

    it "must be for either a bill or a topic" do
    	subject.assigned_to.should == Topics.Healthcare
    end

    it "must be for either a bill or a topic" do
    	vote = Vote.new Bills.Prop8
    	subject.assigned_to.should == Bills.Prop8
    end
end
