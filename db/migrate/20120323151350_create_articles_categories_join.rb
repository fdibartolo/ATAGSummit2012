class CreateArticlesCategoriesJoin < ActiveRecord::Migration
  def up
		create_table 'articles_categories', :id => false do |t|
			t.column :article_id, :integer	
			t.column :category_id, :integer	
		end
  end

  def down
		drop_table 'articles_categories'
  end
end
