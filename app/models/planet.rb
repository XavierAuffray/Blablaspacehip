class Planet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
