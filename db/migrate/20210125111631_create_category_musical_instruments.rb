class CreateCategoryMusicalInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :category_musical_instruments do |t|
      t.integer :category_id
      t.integer :musical_instrument_id

      t.timestamps
    end
  end
end
