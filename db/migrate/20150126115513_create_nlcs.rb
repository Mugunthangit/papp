class CreateNlcs < ActiveRecord::Migration
  def change
    create_table :nlcs do |t|
      t.integer :id
      t.integer :nlc_no

      t.timestamps null: false
    end
  end
end
