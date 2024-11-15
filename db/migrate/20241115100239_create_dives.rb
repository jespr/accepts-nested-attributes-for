class CreateDives < ActiveRecord::Migration[8.0]
  def change
    create_table :dives do |t|
      t.string :diver
      t.date :date
      t.belongs_to :dive_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
