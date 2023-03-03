class Addemail < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :email, :string
  end
end
