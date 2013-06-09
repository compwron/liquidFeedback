require_relative "../lib/voter"

describe Voter do

  subject { Voter.new }

    it "should have a vote" do
    	subject.vote.should_not be_nil
    end

    it "should be able to assign their vote for a specific topic to another voter" do
    	other_voter = Voter.new
    	subject.flow_vote_on_topic_to(Topics.Healthcare, other_voter) # to flow here means to assign a vote to another voter
    	other_voter.all_votes.should_include(Vote.new(Topics.Healthcare, subject))
    	subject.vote_on_topic_belongs_to(Topics.Healthcare, other_voter)
    end

    it "should be able to revoke vote flowed to another voter" do
    	healthcare_vote = (Vote.new(Topics.Healthcare, subject))
    	
    	other_voter = Voter.new
    	subject.flow_vote_on_topic_to(Topics.Healthcare, other_voter) # to flow here means to assign a vote to another voter
    	other_voter.all_votes.should include healthcare_vote
    	
    	subject.retrieve_vote(Topics.Healthcare)
    	other_voter.all_votes.should_not include healthcare_vote
    end

end
