class CreateNumberOfPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :number_of_people do |t|
      t.string :description
      t.references :beer, foreign_key: true
      t.references :occasion, foreign_key: true

      t.timestamps
    end
  end
end
