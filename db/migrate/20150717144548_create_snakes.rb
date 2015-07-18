class CreateSnakes < ActiveRecord::Migration
  def change
    create_table :snakes do |t|
      t.boolean :red, default: false
      t.boolean :white, default: false
      t.boolean :orange, default: false
      t.boolean :white, default: false
      t.boolean :green, default: false
      t.boolean :blue, default: false
      t.boolean :brown, default: false
      t.boolean :black, default: false
      t.boolean :band_pattern, default: false
      t.boolean :stripe_pattern,default: false
      t.boolean :solid_pattern, default: false
      t.boolean :splotches_pattern, default: false
      t.string :image
      t.string :name
      t.string :venom
      t.references :user

      t.timestamps null: false
    end
  end
end
