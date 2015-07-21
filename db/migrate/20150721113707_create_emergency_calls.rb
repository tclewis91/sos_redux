class CreateEmergencyCalls < ActiveRecord::Migration
  def change
    create_table :emergency_calls do |t|
      t.string :phone
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
