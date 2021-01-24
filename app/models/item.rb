class Item < ApplicationRecord
  belongs_to :processo, optional: true
  belongs_to :pac
end
