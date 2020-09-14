class ChangeCityStringLimit < ActiveRecord::Migration[6.0]
  def change
    change_column :libraries, :city, :string, limit: 25
  end
end
