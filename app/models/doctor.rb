# frozen_string_literal: true

class Doctor < ActiveRecord::Base
  belongs_to :profession
  has_many :doctor_achievements

  has_many :clinic_doctors
  has_many :clinics, through: :clinic_doctors

  has_many :doctor_reviews
  has_many :patients, through: :doctor_reviews
end
