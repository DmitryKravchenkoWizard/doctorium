# frozen_string_literal: true

class AddDoctorAchievementsFkColToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctor_achievements, :doctor, foreign_key: true
  end
end
