class CreateBeats < ActiveRecord::Migration[6.1]
  def change
    create_table :beats do |t|
      t.string :name
      t.string :description
      t.float :tempo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
