class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.integer :sale

      t.timestamps null: false
    end
  end
end
