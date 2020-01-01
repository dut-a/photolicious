class CreatePhotoEdits < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_edits do |t|
      t.references :edit
      t.references :photo
      t.string :changes_made
      t.timestamps
    end
    add_index(:photo_edits, [:edit_id, :photo_id])
  end
end
