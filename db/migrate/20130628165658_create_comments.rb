class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body

      t.timestamps

      t.integer :user_id
      t.integer :post_id
    end
  end
end
