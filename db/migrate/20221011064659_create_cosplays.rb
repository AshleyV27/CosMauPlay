class CreateCosplays < ActiveRecord::Migration[7.0]
  def change
    create_table :cosplays do |t|
      t.text :name
      t.float :price
      t.string :category
      t.string :size

      t.timestamps
    end
  end
end
