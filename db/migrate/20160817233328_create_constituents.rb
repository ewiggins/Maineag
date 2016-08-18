class CreateConstituents < ActiveRecord::Migration
  def change
    create_table :constituents do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :district
      t.string :email
      t.string :phone_number
      t.timestamps null: false
    end
  end
end
