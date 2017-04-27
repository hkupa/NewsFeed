class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :text
      t,text :url
      t.references :user

      t.timestamps null: false
    end
  end
end
