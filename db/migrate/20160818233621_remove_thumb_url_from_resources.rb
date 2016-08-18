class RemoveThumbUrlFromResources < ActiveRecord::Migration[5.0]
  def change
    remove_column :resources, :thumb_url, :string
  end
end
