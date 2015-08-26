class AddMovieIdToCritics < ActiveRecord::Migration
  def change
    add_column :critics, :movie_id, :integer
  end
end
