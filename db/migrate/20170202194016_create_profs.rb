class CreateProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :profs do |t|
      t.string :name
      t.string :dept

      t.timestamps
    end
  end
end
