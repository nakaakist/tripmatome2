class CreateArticles < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    
      t.text :article_text
      	
      t.timestamps null: false
    end
  end
end
