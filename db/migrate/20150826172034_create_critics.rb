class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.integer :rating, default: 0
      t.text :comment
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
