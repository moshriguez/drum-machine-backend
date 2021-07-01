class CreateBeatPads < ActiveRecord::Migration[6.1]
  def change
    create_table :beat_pads do |t|
      t.pad :resources
      t.beat :resources
      t.string :sequence
      t.float :volume

      t.timestamps
    end
  end
end
