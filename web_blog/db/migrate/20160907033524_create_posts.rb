class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :unique_id
      t.string :title
      t.string :content
      t.string :username

      t.timestamps null: false
    end
  end
end
