class CreatePhotographers < ActiveRecord::Migration[5.1]
  def change
    create_table :photographers do |t|
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.string :place_of_operation # TODO: Break this into 'city/town' and 'country'

      t.timestamps
    end
  end
end
