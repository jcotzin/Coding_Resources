class AddThumbUrlToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :thumb_url, :string
  end
end
