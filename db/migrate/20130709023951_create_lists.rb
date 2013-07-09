class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :task
      t.integer :rating
      t.string :category

      t.timestamps
    end
  end
end
