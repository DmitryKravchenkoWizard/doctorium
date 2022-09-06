# frozen_string_literal: true

class CreateClinicDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :clinic_doctors do |t|
      t.integer :clinic_id
      t.integer :doctor_id

      t.timestamps
    end

    add_index 'clinic_doctors', ['clinic_id'], name: 'index_clinic_doctors_on_clinic_id'
    add_index 'clinic_doctors', ['doctor_id'], name: 'index_clinic_doctors_on_doctor_id'
  end
end
