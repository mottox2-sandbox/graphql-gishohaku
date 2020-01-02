class Circle < ApplicationRecord
  belongs_to :event
  belongs_to :circle_category
  has_many :books
end
