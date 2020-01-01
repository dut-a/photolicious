class CreateEditingPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :editing_programs do |t|
      t.string :name
      t.string :vendor
      t.boolean :open_source

      t.timestamps
    end
  end
end
