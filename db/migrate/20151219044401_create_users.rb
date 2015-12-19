class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :email, null: false
      t.string :nickname, null: false
      t.string :introduction, null: false
      t.string :image_url, null: false
      t.timestamps null: false
    end
    add_index :users, [:provider, :uid], unique: true
  end
end
