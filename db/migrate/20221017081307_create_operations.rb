class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.string :title
      t.string :state
      t.string :description
      t.integer :targets
      t.integer :total_amount
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
