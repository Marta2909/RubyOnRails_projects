class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :author
      t.text :body
      t.string :title
      t.integer :note
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
