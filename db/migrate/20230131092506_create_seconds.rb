class CreateSeconds < ActiveRecord::Migration[7.0]
  def change
    create_table :seconds do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
