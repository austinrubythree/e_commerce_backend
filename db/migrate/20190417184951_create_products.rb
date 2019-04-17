class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :keywords
      t.float :price
      t.integer :count
      t.text :image
      
      t.timestamps
    end
  end
end
