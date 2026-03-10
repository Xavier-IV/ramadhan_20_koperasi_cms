class CreateSettings < ActiveRecord::Migration[8.1]
  def change
    create_table :settings do |t|
      t.string :koperasi_name, null: false, default: "Koperasi Warga Bahagia"
      t.string :registration_number
      t.string :phone
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
