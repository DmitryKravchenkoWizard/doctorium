class Patient < ApplicationRecord
  has_many :doctor_reviews
  has_many :doctors, through: :doctor_reviews

  has_many :clinic_reviews
  has_many :clinics, through: :clinic_reviews
end
