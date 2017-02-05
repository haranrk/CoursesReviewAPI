class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :dept_id
      t.string :number
      t.string :name
      t.string :prof
      t.integer :credits
      t.integer :sem

      t.timestamps
    end
  end
end
