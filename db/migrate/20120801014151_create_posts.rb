class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.boolean :hide_email
      t.string :topic
      t.text :body
      t.boolean :terms_of_service
      
      t.timestamps
    end
  end
end
