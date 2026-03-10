class CreateMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :members do |t|
      t.string :member_id, null: false
      t.string :uuid, null: false
      t.string :name, null: false
      t.string :ic_number, null: false
      t.string :phone
      t.text :address
      t.date :join_date, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :members, :member_id, unique: true
    add_index :members, :uuid, unique: true
    add_index :members, :ic_number, unique: true
  end
end
