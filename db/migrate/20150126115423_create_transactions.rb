class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :unit_id
      t.integer :employee_id
      t.integer :contribution_id
      t.integer :cocontri
      t.integer :subcontri
      t.date :date
      t.string :remark

      t.timestamps null: false
    end
  end
end
