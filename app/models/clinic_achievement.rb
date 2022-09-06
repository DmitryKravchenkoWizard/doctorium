class ClinicAchievement < ApplicationRecord
  belongs_to :clinic

  enum achievement_type: { award: 0, certificate: 1, publication: 2 }
end
