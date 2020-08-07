class BasketballTeam < ApplicationRecord
    has_many :players, dependent: :destroy
end
