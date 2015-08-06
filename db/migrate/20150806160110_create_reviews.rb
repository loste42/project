class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :text
      t.references :user
      t.belongs_to :movie, index: true

      t.timestamps null: false
    end
  end
end
