class AddResultToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :result, :string
  end
end
