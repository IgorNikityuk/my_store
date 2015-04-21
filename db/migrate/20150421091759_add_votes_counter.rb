class AddVotesCounter < ActiveRecord::Migration
  def change
    add_column :pages, :votes_count, :integer, default: 0
  end
end
