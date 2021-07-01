class CreateBeatPads < ActiveRecord::Migration[6.1]
  def change
    create_table :beat_pads do |t|
      t.references :pad, null: false, foreign_key: true
      t.references :beat, null: false, foreign_key: true
      t.string :sequence
      t.float :volume

      t.timestamps
    end
  end
end
