class CreateArticlesTags < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|
    	t.string :tag

      t.timestamps null: false
    end
  end
end
