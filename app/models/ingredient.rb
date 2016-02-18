class Ingredient < ActiveRecord::Base
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
end

# , allow_blank: false
