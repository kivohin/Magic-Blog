class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :unique_id
      t.string :post_id
      t.string :content
      t.string :username

      t.timestamps null: false
    end
  end
end
