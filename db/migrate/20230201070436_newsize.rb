class Newsize < ActiveRecord::Migration[7.0]
  def change
    add_column :seconds, :newsize, :string
  end
end
