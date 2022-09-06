# frozen_string_literal: true

class CreateClinicAchievements < ActiveRecord::Migration[6.1]
  def change
    create_table :clinic_achievements do |t|
      t.integer  :achievement_type,  null: false, default: ''
      t.string   :name,              null: false, default: ''
      t.string   :details,           default: ''
      t.string   :year,              null: false, default: ''

      t.timestamps
    end
  end
end
