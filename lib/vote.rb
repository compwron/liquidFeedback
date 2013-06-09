class Vote
	attr_reader :assigned_to
	def initialize(purpose)
		@assigned_to = purpose
	end
end