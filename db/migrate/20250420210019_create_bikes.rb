class CreateBikes < ActiveRecord::Migration[8.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.integer :category
      t.integer :stock
      t.decimal :price

      t.timestamps
    end
  end
end
