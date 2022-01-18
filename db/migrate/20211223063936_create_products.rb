class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.integer :category_id
      t.text :description
      t.text :size

      t.timestamps
    end
  end
end
