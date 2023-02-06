class Addcity < ActiveRecord::Migration[7.0]
  def change
    add_column :firsts, :city, :string
  end
end
