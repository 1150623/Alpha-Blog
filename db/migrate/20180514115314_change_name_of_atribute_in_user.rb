class ChangeNameOfAtributeInUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :password_degest, :password_digest
  end
end
