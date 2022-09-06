# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_doc1 = User.create(email: 'firstdoc@gmail.com', password: '123qaz', phone: '0969340291', role_id: 0)
user_doc2 = User.create(email: 'second@gmail.com', password: '123qaz', phone: '0974328593', role_id: 0)
user_clinic1 = User.create(email: 'firstclinic@gmail.com', password: '123qaz', phone: '0964337123', role_id: 1)
user_clinic2 = User.create(email: 'secondclinic@gmail.com', password: '123qaz', phone: '0964337923', role_id: 1)
user_patient1 = User.create(email: 'firstpatient@gmail.com', password: '123qaz', phone: '0964197123', role_id: 2)
user_patient2 = User.create(email: 'secondpatient@gmail.com', password: '123qaz', phone: '0964176523', role_id: 2)

profession1 = Profession.create(name: 'Therapist')
profession2 = Profession.create(name: 'Surgeon')

doc1 = Doctor.create(name: 'Andrew', surname: 'Bulk', user_id: user_doc1.id, profession_id: profession1.id)
doc2 = Doctor.create(name: 'Anje', surname: 'Yakov', user_id: user_doc2.id, profession_id: profession2.id)

DoctorAchievement.create(achievement_type: 0, name: 'achievement_award', details: 'for best doctor', year: '2022', doctor_id: doc1.id)
DoctorAchievement.create(achievement_type: 1, name: 'achievement_certificate', details: 'for best doctor', year: '2012', doctor_id: doc1.id)
DoctorAchievement.create(achievement_type: 0, name: 'achievement_award', details: 'for best doctor', year: '2022', doctor_id: doc2.id)
DoctorAchievement.create(achievement_type: 2, name: 'achievement_publication', details: 'best doctor publication', year: '2012', doctor_id: doc2.id)

clinic1 = Clinic.create(name: 'St. Patric Hospital', address: '1st, 12a', user_id: user_clinic1.id, subscription_plan: 'dont know what is it')
clinic2 = Clinic.create(name: 'St. Josef Hospital', address: 'Adrian St., 8a', user_id: user_clinic2.id, subscription_plan: 'still dont know...')

ClinicAchievement.create(achievement_type: 0, name: 'super hospital', details: 'with best regards', year: '2022', clinic_id: clinic1.id)
ClinicAchievement.create(achievement_type: 1, name: 'best hospital', details: 'with best regards', year: '2022', clinic_id: clinic1.id)
ClinicAchievement.create(achievement_type: 0, name: 'super hospital', details: 'with best regards', year: '2022', clinic_id: clinic2.id)
ClinicAchievement.create(achievement_type: 1, name: 'best hospital', details: 'with best regards', year: '2022', clinic_id: clinic2.id)

ClinicDoctor.create(doctor_id: doc1.id, clinic_id: clinic1.id)
ClinicDoctor.create(doctor_id: doc1.id, clinic_id: clinic2.id)
ClinicDoctor.create(doctor_id: doc2.id, clinic_id: clinic1.id)
ClinicDoctor.create(doctor_id: doc2.id, clinic_id: clinic2.id)

patient1 = Patient.create(user_id: user_patient1.id, name: 'Vasiliy', surname: 'Alibaba', country: 'Ukraine', gender: 'male', date_of_birth: Time.now)
patient2 = Patient.create(user_id: user_patient2.id, name: 'Dmitry', surname: 'Abramovich', country: 'Ukraine', gender: 'male', date_of_birth: Time.now - 27.years)

ClinicReview.create(patient_id: patient1.id, clinic_id: clinic1.id, review_type: 0, text: 'some review for clinic1')
ClinicReview.create(patient_id: patient1.id, clinic_id: clinic2.id, review_type: 1, text: 'some comment for clinic2')
ClinicReview.create(patient_id: patient2.id, clinic_id: clinic1.id, review_type: 0, text: 'some review for clinic1')
ClinicReview.create(patient_id: patient2.id, clinic_id: clinic2.id, review_type: 1, text: 'some comment for clinic2')

DoctorReview.create(patient_id: patient1.id, doctor_id: doc1.id, review_type: 0, text: 'some review for doc1')
DoctorReview.create(patient_id: patient1.id, doctor_id: doc2.id, review_type: 1, text: 'some comment for doc1')
DoctorReview.create(patient_id: patient2.id, doctor_id: doc1.id, review_type: 0, text: 'some review for clinic1')
DoctorReview.create(patient_id: patient2.id, doctor_id: doc2.id, review_type: 1, text: 'some comment for doc2')
