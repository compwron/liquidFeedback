class Voter
	attr_reader :vote

	def initialize()
		@vote = Vote.new(Topics.Healthcare) # how will this work?
	end
end