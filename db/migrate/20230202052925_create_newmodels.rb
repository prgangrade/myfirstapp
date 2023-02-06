class CreateNewmodels < ActiveRecord::Migration[7.0]
  def change
    create_table :newmodels do |t|
      t.string :login
      t.string :email

      t.timestamps
    end
  end
end
