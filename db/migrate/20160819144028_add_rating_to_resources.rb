class AddRatingToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :rating, :string
  end
end
