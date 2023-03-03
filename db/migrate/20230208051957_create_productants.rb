class CreateProductants < ActiveRecord::Migration[7.0]
  def change
    create_table :productants do |t|
      t.string :name

      t.timestamps
    end
  end
end
