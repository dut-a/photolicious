class CreateEdits < ActiveRecord::Migration[5.1]
  def change
    create_table :edits do |t|
      t.string :editor_name
      t.integer :photo_id
      t.integer :editing_program_id

      t.timestamps
    end
  end
end
