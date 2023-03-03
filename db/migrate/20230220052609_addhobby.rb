class Addhobby < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :hobby, :string
  end
end
