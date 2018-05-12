class AddDescriptionToArticles < ActiveRecord::Migration[5.1]
  def change
    # add_column [TABLE], [ATRIBUTE_NAME], [ATRIBUTE_TYPE]
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updatd_at, :datetime
  end
end
