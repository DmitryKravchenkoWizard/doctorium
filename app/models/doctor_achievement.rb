class DoctorAchievement < ApplicationRecord
  belongs_to :doctor

  enum achievement_type: { award: 0, certificate: 1, publication: 2 }
end
