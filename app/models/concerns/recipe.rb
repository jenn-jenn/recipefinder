class Recipe
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: ENV["FOOD2FORK_KEY"]

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"]
	end

end
