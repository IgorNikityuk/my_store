class AddBlogPostColumns < ActiveRecord::Migration
  def change
    add_column :blog_posts, :commentable_id,    :integer
    add_column :blog_posts, :commentable_type,  :string
  end
end
