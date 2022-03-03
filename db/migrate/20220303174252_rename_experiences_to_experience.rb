class RenameExperiencesToExperience < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :experiences_id, :experience_id
  end
end 
