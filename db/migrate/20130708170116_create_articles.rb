class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :announce
      t.text :body
      t.string :author
      t.string :slug
      t.string :old_image
      t.string :old_gallery

      t.timestamps
    end
  end
end
