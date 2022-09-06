# frozen_string_literal: true

class CreateClinicReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :clinic_reviews do |t|
      t.integer  :clinic_id,         null: false
      t.integer  :patient_id,        null: false
      t.integer  :review_type,       null: false, default: ''
      t.string   :text,              null: false, default: ''

      t.timestamps
    end

    add_index 'clinic_reviews', ['clinic_id'], name: 'index_clinic_reviews_on_clinic_id'
    add_index 'clinic_reviews', ['patient_id'], name: 'index_clinic_reviews_on_patient_id'
  end
end
