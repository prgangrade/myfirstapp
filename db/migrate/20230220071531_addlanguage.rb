class Addlanguage < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :language, :string
  end
end
