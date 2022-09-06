# frozen_string_literal: true

class ClinicReview < ApplicationRecord
  belongs_to :clinic
  belongs_to :patient

  enum review_type: { review: 0, comment: 1 }
end
