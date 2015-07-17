class CreateSnakes < ActiveRecord::Migration
  def change
    create_table :snakes do |t|
      t.string :scientific_name
      t.string :name
      t.string :aggressiveness
      t.string :symptoms
      t.string :first_aid
      t.boolean :red
      t.boolean :brown
      t.boolean :yellow
      t.boolean :black
      t.boolean :white
      t.boolean :orange
      t.boolean :green
      t.boolean :purple
      t.boolean :blue
      t.boolean :pink



      t.timestamps null: false
    end
  end
end
