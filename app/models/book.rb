class Book < ApplicationRecord
  belongs_to :circle
  belongs_to :event
end
