class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :musical_influences, :string
    add_column :users, :avatar, :string
  end
end
