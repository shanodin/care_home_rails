class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
