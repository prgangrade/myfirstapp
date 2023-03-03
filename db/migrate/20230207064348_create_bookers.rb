class CreateBookers < ActiveRecord::Migration[7.0]
  def change
    create_table :bookers do |t|
      t.string :name
      t.belongs_to :authors
      t.belongs_to :readers

    

      t.timestamps
    end
  end
end
