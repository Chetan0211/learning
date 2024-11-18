class HomeController < ApplicationController
  def index
    is_a_bird_finder = IsABirdFinder.new()
    prediction = is_a_bird_finder.predict("./assets/images/bird.jpg")
    debugger
  end
end
