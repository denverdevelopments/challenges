class Bill < ApplicationRecord
  belongs_to :biller
  belongs_to :user
end
