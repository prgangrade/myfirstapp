class Adddate < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :date_of_birth, :string
  end
end
