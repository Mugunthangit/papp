class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :pran_no
      t.string :name
      t.string :details

      t.timestamps null: false
    end
  end
end
