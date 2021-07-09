class AddAttributesToBeatPads < ActiveRecord::Migration[6.1]
  def change
    add_column :beat_pads, :panning, :float
    add_column :beat_pads, :pitch, :float
  end
end
