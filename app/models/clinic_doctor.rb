# frozen_string_literal: true

class ClinicDoctor < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :clinic
end
