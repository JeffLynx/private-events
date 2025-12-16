class EventInvitation < ApplicationRecord
  belongs_to :invited_user, class_name: "User"
  belongs_to :event
end
