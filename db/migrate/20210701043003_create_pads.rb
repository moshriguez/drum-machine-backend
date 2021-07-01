class CreatePads < ActiveRecord::Migration[6.1]
  def change
    create_table :pads do |t|
      t.string :name
      t.string :sample_file

      t.timestamps
    end
  end
end
