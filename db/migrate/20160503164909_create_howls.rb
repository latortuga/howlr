class CreateHowls < ActiveRecord::Migration
  def change
    create_table :howls do |t|
      t.string :content
      t.string :picture_url
      t.references :wolf, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
