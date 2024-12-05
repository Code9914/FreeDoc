# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all

doctor1 = Doctor.create(first_name: "Joé", last_name: "Doe", specialty: "Médecin généraliste", zip_code: "12345")
doctor2 = Doctor.create(first_name: "Jamel", last_name: "Smith", specialty: "Dentiste", zip_code: "67890")

Doctor.all.each do |doctor|
  puts "  - Dr. #{doctor.first_name} #{doctor.last_name}, Specialty: #{doctor.specialty}, Zip: #{doctor.zip_code}"
end
puts " "

patient1 = Patient.create(first_name: "Alice", last_name: "Brown")
patient2 = Patient.create(first_name: "Bob", last_name: "Johnson")

Patient.all.each do |patient|
  puts "  - #{patient.first_name} #{patient.last_name}"
end
puts " "

appointment1 = Appointment.create(date: "2024-12-07 10:00", doctor: doctor1, patient: patient1)
appointment2 = Appointment.create(date: "2024-12-07 16:00", doctor: doctor2, patient: patient2)

Appointment.all.each do |appointment|
  puts "  - Date: #{appointment.date}, Doctor: Dr. #{appointment.doctor.last_name}, Patient: #{appointment.patient.first_name} #{appointment.patient.last_name}"
end
puts " "

puts "Résumé:"
puts "  - Total Doctors: #{Doctor.count}"
puts "  - Total Patients: #{Patient.count}"
puts "  - Total Appointments: #{Appointment.count}"