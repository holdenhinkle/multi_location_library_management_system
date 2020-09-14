class AddStateToLibraries < ActiveRecord::Migration[6.0]
  def change
    add_column :libraries, :state, :string, limit: 2
  end
end
