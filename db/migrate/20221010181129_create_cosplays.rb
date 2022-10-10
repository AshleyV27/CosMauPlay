class CreateCosplays < ActiveRecord::Migration[7.0]
  def change
    create_table :cosplays do |t|
      t.string :name
      t.float :price
      t.text :category
      t.string :size

      t.timestamps
    end
  end
end
