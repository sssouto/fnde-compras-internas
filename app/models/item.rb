class Item < ApplicationRecord
  belongs_to :processo, optional: true
end
