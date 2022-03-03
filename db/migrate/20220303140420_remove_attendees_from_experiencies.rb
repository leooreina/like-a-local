class RemoveAttendeesFromExperiencies < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiencies, :attendees, :integer
  end
end
