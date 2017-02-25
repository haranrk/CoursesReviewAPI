class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :course_id
      t.text :grading
      t.text :learning
      t.text :apply
      t.text :prerequisites
      t.text :usefulforcareer
      t.integer :vote_count
      t.integer :upvote

      t.timestamps
    end
  end
end
