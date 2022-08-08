class CreateMoviesGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :movies_genres do |t|
      t.integer :genre_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
