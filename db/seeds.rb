# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Patient.destroy_all
Membership.destroy_all
Referral.destroy_all
Booking.destroy_all
User.count
Patient.count 
Membership.all

patient_one = Patient.create(name: 'knut', zip: '0556', address: 'urtegata 39', city: 'Oslo')
patient_two = Patient.create(name: 'steve', zip: '0187', address: 'toftes 48', city: 'Oslo')
# p Patient.all


# user = User.create!(email: 'jerem.po@test.com', password: 'test1234', password_confirmation: 'test1234')
# user_two = User.create!(email: 'bob.po@test.com', password: 'test1234', password_confirmation: 'test1234')

# p user


# # user.patients = [patient_one, patient_two]

# member = Membership.new(patient_id: patient_one.id, memberable_type: user.class, memberable_id: user.id)
# member.save!
# member_two = Membership.new(patient_id: patient_two.id, memberable_type: user.class, memberable_id: user.id)
# member_two.save!

# p Membership.all


# user_three = User.create!(email: 'sally.po@test.com', password: 'test1234', password_confirmation: 'test1234', patients_attributes:[name: 'pat cool', zip: '0188', address: 'urtegata 45', city: 'Oslo'])


user_four = User.create!(email: 'samira.po@test.com', password: 'test1234', password_confirmation: 'test1234', patient_ids: [patient_one.id, patient_two.id])

booking_one = Booking.create(begins_at: Time.now, ends_at: Time.now + 1.hour, address: 'toftes gate 30', city: 'Oslo', zip: "0556", price: 1500, adress_directions: 'second building', patient_ids: [patient_one.id, patient_two.id] )

referral_one = Referral.create( address: 'toftes gate 30', city: 'Oslo', zip: "0556", adress_directions: 'second building', patient_ids: [patient_one.id, patient_two.id] )