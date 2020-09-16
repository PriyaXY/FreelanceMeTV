class CreateForums < ActiveRecord::Migration[6.0]
  def change
    create_table :forums do |t|
      t.references :random_username, null: false, foreign_key: true

      t.timestamps
    end
  end
end
