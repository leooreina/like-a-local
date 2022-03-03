class ChangeDataTypeOnExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :starting_time
    add_column :experiences, :starting_time, :time
  end
end
