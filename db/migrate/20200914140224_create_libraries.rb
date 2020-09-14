class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, limit: 2, null: false
      t.string :zip_code, limit: 5, null: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
