class HomeController < ApplicationController
  def index
    @results = nil
    if params[:search].present?
      @results = Catelogue.search(params[:search])
    end
  end

  def autosuggest
    @results = Catelogue.search(params[:query], fields: [:catelogue_name], limit: 10, misspellings: {below: 5})
    render json: @results.results
  end
end
