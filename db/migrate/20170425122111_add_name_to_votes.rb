class AddNameToVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :name, :string
  end
end
