class CreateJoinTableBooksGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :books_genres do |t|
      t.references :books, foreign_key: true
      t.references :genres, foreign_key: true
    end
  end
end
