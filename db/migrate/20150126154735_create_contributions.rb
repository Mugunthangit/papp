class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
