# frozen_string_literal: true

class CreateDoctorReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_reviews do |t|
      t.integer  :doctor_id,         null: false
      t.integer  :patient_id,        null: false
      t.string   :review_type,       null: false, default: ''
      t.string   :text,              null: false, default: ''

      t.timestamps
    end

    add_index 'doctor_reviews', ['doctor_id'], name: 'index_doctor_reviews_on_doctor_id'
    add_index 'doctor_reviews', ['patient_id'], name: 'index_doctor_reviews_on_patient_id'
  end
end
