class AddCityToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :city, :string
  end
end
