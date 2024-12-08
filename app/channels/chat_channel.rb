class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_god_level"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
