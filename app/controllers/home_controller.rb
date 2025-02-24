class HomeController < ApplicationController
  def index
    @results = nil
    if params[:search].present?
      @results = Catelogue.search(params[:search])
    end
  end
end
