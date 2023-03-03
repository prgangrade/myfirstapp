class Image < ActiveRecord::Migration[7.0]
  def change
    add_column :firstapps, :image, :string
  end
end
