class CreateLoanRepayments < ActiveRecord::Migration[8.1]
  def change
    create_table :loan_repayments do |t|
      t.references :loan, null: false, foreign_key: true
      t.decimal :amount,  null: false, precision: 10, scale: 2
      t.date    :paid_on, null: false
      t.text :notes

      t.timestamps
    end
  end
end
