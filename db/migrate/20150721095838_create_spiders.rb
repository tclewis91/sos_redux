class CreateSpiders < ActiveRecord::Migration
  def change
    create_table :spiders do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
