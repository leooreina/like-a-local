class RemoveAttendeesFromExperiencies < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :attendees
  end
end
