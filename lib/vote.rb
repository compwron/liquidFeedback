class Vote
	attr_reader :assigned_to
	def initialize(purpose, original_vote_owner=self)
		@assigned_to = purpose
	end
end