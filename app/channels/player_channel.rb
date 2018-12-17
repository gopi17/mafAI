class PlayerChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'instructions'
  end

  def listen
  end
end
