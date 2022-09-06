class Profession < ApplicationRecord
  has_many :doctors

  scope :filter_by_name, ->(name) { where("name like '%?%'", name) }
end
