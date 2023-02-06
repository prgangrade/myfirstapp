class Addmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :firsts, :marks, :string
  end
end
