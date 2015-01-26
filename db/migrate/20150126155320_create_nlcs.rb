class CreateNlcs < ActiveRecord::Migration
  def change
    create_table :nlcs do |t|
      t.integer :nlc_no

      t.timestamps null: false
    end
  end
end
