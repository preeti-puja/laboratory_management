class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string  :email, null: false
      t.string  :first_name, null: false
      t.string  :second_name
      t.integer :primary_pnumber, null: false
      t.integer :secondary_pnumber
      t.boolean :is_active, default: true
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
