class Size < ActiveRecord::Migration[7.0]
  def change
    add_column :seconds, :size, :string
  end
end
