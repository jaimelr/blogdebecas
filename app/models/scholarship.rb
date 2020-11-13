class Scholarship < ApplicationRecord
  belongs_to :category
  has_many :requirements
end
