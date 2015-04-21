class CreatePositions < ActiveRecord::Migration
  def up
    create_table :positions do |t|
      t.integer :cart_id
      t.integer :page_id
      t.integer :quantity

      t.timestamps null: false
    end
    drop_table :carts_pages
  end
end