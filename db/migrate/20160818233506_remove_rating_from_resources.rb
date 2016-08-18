class RemoveRatingFromResources < ActiveRecord::Migration[5.0]
  def change
    remove_column :resources, :rating, :string
  end
end
