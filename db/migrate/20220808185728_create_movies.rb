class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :duration
      t.string :age_rating
      t.decimal :imdb_rating, precision: 9, scale: 1
      t.integer :rotten_tomatoes_rating

      t.timestamps
    end
  end
end
