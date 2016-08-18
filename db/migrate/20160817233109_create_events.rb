class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :place
      t.datetime :time
      t.string :description

      t.timestamps null: false
    end
  end
end
