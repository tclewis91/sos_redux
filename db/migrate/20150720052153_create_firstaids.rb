class CreateFirstaids < ActiveRecord::Migration
  def change
    create_table :firstaids do |t|
      t.text :emergency_spider
      t.text :snake_bite
      t.text :spider_bite
      t.text :emergency_snake

      t.timestamps null: false
    end
  end
end
