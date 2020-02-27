class Planet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
