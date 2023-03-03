class CreateSecondapps < ActiveRecord::Migration[7.0]
  def change
    create_table :secondapps do |t|
      t.string :name
      t.string :hobby
      t.references :firstapp

      t.timestamps
    end
  end
end
