class AddVotesToOperations < ActiveRecord::Migration[7.0]
  def change
    add_column :operations, :votes, :integer
  end
end
