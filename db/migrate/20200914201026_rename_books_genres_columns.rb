class RenameBooksGenresColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :books_genres, :books_id, :book_id
    rename_column :books_genres, :genres_id, :genre_id
  end
end
