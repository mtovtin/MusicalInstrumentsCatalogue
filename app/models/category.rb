class Category < ApplicationRecord
    has_many :category_musical_instruments
   has_many :musical_instruments, through: :category_musical_instruments
end
