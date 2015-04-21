class AddPagesTable < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string  :name
      t.string  :url
      t.string  :description
      t.integer :webelement_count

      t.timestamps null: false
    end
  end
end
