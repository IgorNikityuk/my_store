class CreateDeletePageIdColumns < ActiveRecord::Migration
  def change
    remove_column :comments, :page_id
  end
end
