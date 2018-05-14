class FixNameOfAtributeInArticles < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :updatd_at, :updated_at
  end
end
