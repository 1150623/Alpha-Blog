class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def change
    # foreign key must be integer
    add_column :articles, :user_id, :integer 
  end
end
