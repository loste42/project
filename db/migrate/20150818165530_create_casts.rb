class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :role

      t.timestamps null: false
    end
  end
end
