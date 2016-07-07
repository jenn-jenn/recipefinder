class RecipesController < ApplicationController
  def index
  	# check if request parameter search was passed in
  	# use the search term as the keyword if supplied, & use a default value of chocolate if not supplied
  	@search_term = params[:search] || 'chocolate'
  	@results = Recipe.for(@search_term)
  end
end
