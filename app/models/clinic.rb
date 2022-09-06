# frozen_string_literal: true

class Clinic < ActiveRecord::Base
  has_many :clinic_achievements

  has_many :clinic_doctors
  has_many :doctors, through: :clinic_doctors

  has_many :clinic_reviews
  has_many :patients, through: :clinic_reviews
end
