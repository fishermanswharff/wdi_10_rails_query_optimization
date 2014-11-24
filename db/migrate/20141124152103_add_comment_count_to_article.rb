class AddCommentCountToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :comments_count, :integer
  end
end
