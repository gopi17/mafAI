class ConductorChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'instructions'
  end

  def conduct
    ActionCable.server.broadcast('instructions',
      instruction: render_instruction(data['instruction']))
  end

  private

  def render_instruction(instruction)
    ApplicationController.render(partial: 'instructions/instruction',
      locals: { instruction: instruction })
    end
end
