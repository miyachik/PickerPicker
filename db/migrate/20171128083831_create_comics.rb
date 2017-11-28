class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :image_url
      t.integer :story_id
      t.integer :frame
      t.integer :emotion_type

      t.timestamps
    end
  end
end
