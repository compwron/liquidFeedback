class Voter
	attr_reader :vote

	def initialize()
		@vote = Vote.new(Topics.Healthcare) # how will this work?
	end

	def flow_vote_on_topic_to(purpose, other_voter)
		@flow_votes += new Vote(purpose, other_voter)
	end
end