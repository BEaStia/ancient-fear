class Lobby < ApplicationRecord
  belongs_to :user
  has_many :lobby_users
  has_many :users, through: :lobby_users
end
