class HomeController < ApplicationController
  def index
    UserMailer.dummy_email("mypersonalacc0211@gmail.com").deliver_now
  end
end
