class CreateContributions < ActiveRecord::Migration[8.1]
  def change
    create_table :contributions do |t|
      t.references :member, null: false, foreign_key: true
      t.decimal :amount, null: false, precision: 10, scale: 2
      t.integer :month, null: false
      t.integer :year, null: false
      t.date :paid_on
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :contributions, %i[member_id month year], unique: true
  end
end
