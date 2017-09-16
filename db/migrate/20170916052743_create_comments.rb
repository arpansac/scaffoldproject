class CreateComments < ActiveRecord::Migration
  def change
  	# has many relationships from user to comment and post to comment
  	# need a user_id and post_id in comments
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :post, index: true, foreign_key: true, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
