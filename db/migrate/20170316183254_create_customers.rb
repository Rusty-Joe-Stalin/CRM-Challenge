class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :Full_Name
      t.string :Phone_Number
      t.string :Email
      t.string :Image_Path

      t.timestamps
    end
  end
end
