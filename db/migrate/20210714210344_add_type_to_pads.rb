class AddTypeToPads < ActiveRecord::Migration[6.1]
  def change
    add_column :pads, :sample_type, :string
  end
end
