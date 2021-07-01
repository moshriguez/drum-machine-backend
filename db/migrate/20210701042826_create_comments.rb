class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.beat :resources
      t.user :resources
      t.string :content

      t.timestamps
    end
  end
end
