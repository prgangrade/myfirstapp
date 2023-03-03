class Gender < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :gender, :string
  end
end
