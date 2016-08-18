class AddThumbToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :thumb, :string
  end
end
