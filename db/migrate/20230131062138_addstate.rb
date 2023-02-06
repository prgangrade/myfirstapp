class Addstate < ActiveRecord::Migration[7.0]
  def change
    add_column :firsts, :state, :string
    remove_column :firsts, :percentage, :decimal
    rename_column :firsts, :marks, :newmarks
  end
end
