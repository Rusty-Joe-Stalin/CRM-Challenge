class Customers < ApplicationRecord
validates :Full_Name, presence: true
belongs_to :province
end
