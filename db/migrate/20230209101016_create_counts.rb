class CreateCounts < ActiveRecord::Migration[7.0]
  def change
    create_table :counts do |t|
      t.string :name
      t.integer :rollno

      t.timestamps
    end
  end
end
