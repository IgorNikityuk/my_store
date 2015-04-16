class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string    :name
      t.string    :url
      t.integer   :webelement_counts
      t.string    :description

      t.timestamps null: false
    end
  end
end
