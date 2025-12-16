# app/controllers/event_invitations_controller.rb
class EventInvitationsController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:event_id])

    if event.creator == current_user
      EventInvitation.create(
        event: event,
        invited_user_id: params[:invited_user_id]
      )
    end

    redirect_to event
  end
end
