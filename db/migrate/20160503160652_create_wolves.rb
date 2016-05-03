class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name
      t.string :picture_url
      t.string :bio

      t.timestamps null: false
    end
  end
end
