class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.string :rating

      t.timestamps
    end
  end
end
