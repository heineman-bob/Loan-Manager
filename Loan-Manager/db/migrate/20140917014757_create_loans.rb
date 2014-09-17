class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.decimal :principal
      t.decimal :interest_rate

      t.timestamps
    end
  end
end
