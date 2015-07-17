class CreateFirstAids < ActiveRecord::Migration
  def change
    create_table :first_aids do |t|
      t.string :snake_bite
      t.string :symptoms
      t.string :treatment

      t.timestamps null: false
    end
  end
end
