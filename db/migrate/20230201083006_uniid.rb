class Uniid < ActiveRecord::Migration[7.0]
  def change
    add_column :seconds, :uniid, :integer
  end
end
