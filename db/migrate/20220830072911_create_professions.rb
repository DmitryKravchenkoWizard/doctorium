# frozen_string_literal: true

class CreateProfessions < ActiveRecord::Migration[6.1]
  def change
    create_table :professions do |t|
      t.string  :name,         null: false

      t.timestamps
    end
  end
end
