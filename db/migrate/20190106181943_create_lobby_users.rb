class CreateLobbyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :lobby_users do |t|
      t.references :lobby, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
