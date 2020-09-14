class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :isbn, null: false
      t.string :title, null: false
      t.string :slug, null: false
      t.text :description, null: false
      t.string :image_url, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
