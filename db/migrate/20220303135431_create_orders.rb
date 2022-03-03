class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.references :experiences
      t.integer :attendees
      t.timestamps
    end
  end
end
