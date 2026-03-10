class CreateLoans < ActiveRecord::Migration[8.1]
  def change
    create_table :loans do |t|
      t.references :member, null: false, foreign_key: true
      t.decimal    :amount,            null: false, precision: 10, scale: 2
      t.date       :approved_date,     null: false
      t.decimal    :monthly_repayment, null: false, precision: 10, scale: 2
      t.integer    :status,            null: false, default: 0
      t.string     :uuid

      t.timestamps
    end
    add_index :loans, :uuid, unique: true
  end
end
