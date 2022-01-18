class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.text :size
      t.text :status

      t.timestamps
    end
  end
end
