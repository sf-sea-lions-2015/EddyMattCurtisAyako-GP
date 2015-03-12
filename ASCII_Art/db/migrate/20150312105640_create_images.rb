class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :ascii_art
      t.timestamps null: true
    end
  end
end
