class CreateEventInvitations < ActiveRecord::Migration[8.1]
  def change
    create_table :event_invitations do |t|
      t.integer :invited_user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
