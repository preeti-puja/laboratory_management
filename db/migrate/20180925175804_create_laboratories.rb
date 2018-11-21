class CreateLaboratories < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratories do |t|
      t.string  :name
      t.string  :address1
      t.string  :address2
      t.string  :city
      t.string  :state
      t.string  :country
      t.integer :zip
      t.integer :staff_id

      t.timestamps
    end
    add_foreign_key :laboratories, :staffs
  end
end
