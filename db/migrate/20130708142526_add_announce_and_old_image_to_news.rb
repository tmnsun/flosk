class AddAnnounceAndOldImageToNews < ActiveRecord::Migration
  def change
    add_column :news, :announce, :text
    add_column :news, :old_image, :string
  end
end
