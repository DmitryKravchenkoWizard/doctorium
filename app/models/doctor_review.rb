# frozen_string_literal: true

class DoctorReview < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  enum review_type: { review: 0, comment: 1 }
end
