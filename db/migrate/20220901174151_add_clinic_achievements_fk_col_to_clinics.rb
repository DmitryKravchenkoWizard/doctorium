# frozen_string_literal: true

class AddClinicAchievementsFkColToClinics < ActiveRecord::Migration[6.1]
  def change
    add_reference :clinic_achievements, :clinic, foreign_key: true
  end
end
