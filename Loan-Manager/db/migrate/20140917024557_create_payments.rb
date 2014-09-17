class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :date
      t.decimal :amount
      t.boolean :successful
      t.references :loan, index: true

      t.timestamps
    end
  end
end
