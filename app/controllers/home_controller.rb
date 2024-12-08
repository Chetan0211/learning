class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
  end

  def ping_user
    puts "Entered request#{params[:user_id]}"
    ActionCable.server.broadcast("active_#{params[:user_id]}", {data: "Data broadcast for #{params[:user_id]}"})
    redirect_to root_path
  end
end
