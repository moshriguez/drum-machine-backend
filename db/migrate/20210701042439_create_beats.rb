class CreateBeats < ActiveRecord::Migration[6.1]
  def change
    create_table :beats do |t|
      t.string :name
      t.string :description
      t.user :references

      t.timestamps
    end
  end
end
