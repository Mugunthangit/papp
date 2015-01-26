class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :id
      t.integer :nlc_id
      t.string :unit_name

      t.timestamps null: false
    end
  end
end
