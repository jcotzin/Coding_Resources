class AddResourceIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :resource_id, :integer
  end
end
