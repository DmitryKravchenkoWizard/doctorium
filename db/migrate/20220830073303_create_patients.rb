# frozen_string_literal: true
class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string   :name,          null: false, default: ''
      t.string   :surname,       null: false, default: ''
      t.string   :country,       null: false, default: ''
      t.string   :gender,        null: false, default: ''
      t.string   :photo,         default: ''
      t.date     :date_of_birth, null: false, default: ''
      t.string   :time_zone,     default: ''
      t.string   :language,      default: ''
      t.integer  :user_id,       null: false

      t.timestamps
    end
  end
end
