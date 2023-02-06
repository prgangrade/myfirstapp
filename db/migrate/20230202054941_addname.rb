class Addname < ActiveRecord::Migration[7.0]
  def change
    add_column :newmodels, :name, :string
  end
end
