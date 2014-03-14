class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :rating
      t.text :line_summary

      t.timestamps
    end
  end
end
