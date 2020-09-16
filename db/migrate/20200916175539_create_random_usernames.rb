class CreateRandomUsernames < ActiveRecord::Migration[6.0]
  def change
    create_table :random_usernames do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
