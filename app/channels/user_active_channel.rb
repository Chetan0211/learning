class UserActiveChannel < ApplicationCable::Channel
  def subscribed
  stream_from "active_#{params[:user_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
