class CreateCartsPages < ActiveRecord::Migration
  def change
    create_table :carts_pages, id: false do |t|
      t.integer :cart_id
      t.integer :page_id
    end
  end
end
