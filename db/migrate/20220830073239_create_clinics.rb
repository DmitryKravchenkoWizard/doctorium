# frozen_string_literal: true

class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string   :name,          null: false, default: ''
      t.string   :address,       null: false, default: ''
      t.string   :subscription_plan, default: ''
      t.integer  :user_id,       null: false
      t.string   :photo,         default: ''
      t.string   :website,       default: ''
      t.string   :whatsapp,      default: ''
      t.string   :twitter,       default: ''
      t.string   :instagram,     default: ''
      t.string   :youtube,       default: ''
      t.string   :linkedin,      default: ''
      t.string   :about,         default: ''
      t.string   :areas_of_expertise, default: ''
      t.string   :utm_source,    default: ''
      t.string   :utm_medium,    default: ''
      t.string   :utm_campaign,  default: ''
      t.string   :utm_term,      default: ''
      t.string   :utm_content,   default: ''
      t.timestamps
    end
  end
end
