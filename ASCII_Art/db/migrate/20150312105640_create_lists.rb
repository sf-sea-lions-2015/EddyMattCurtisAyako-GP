class CreateImages < ActiveRecord::Migration
  def change
    create_image :lists do |t|
      t.string :name
      t.timestamps null: true
    end
  end
end
