class Password < ActiveRecord::Migration[7.0]
  def change
    add_column :seconds, :password, :string
  end
end
