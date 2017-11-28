class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :product_id
      t.string :image_url

      t.timestamps
    end
  end
end
