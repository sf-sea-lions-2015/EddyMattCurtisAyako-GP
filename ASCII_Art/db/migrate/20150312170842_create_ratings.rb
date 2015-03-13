class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :image
      t.integer  :user_id, :complexity, :coolness, :humor
      t.timestamps null: true
    end
  end
end
