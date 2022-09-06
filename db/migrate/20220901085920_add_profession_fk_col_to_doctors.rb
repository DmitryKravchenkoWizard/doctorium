# frozen_string_literal: true

class AddProfessionFkColToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :profession, foreign_key: true
  end
end
