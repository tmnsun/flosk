class CreateNewsCategories < ActiveRecord::Migration
  def change
    create_table :news_categories do |t|
      t.string :label
      t.string :name

      t.timestamps
    end
  end
end
