class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.references :user
      t.string :location
      t.string :title
      t.float :price
      t.text :description
      t.integer :attendees
      t.string :week_days
      t.integer :starting_time
      t.integer :duration

      t.timestamps
    end
  end
end
