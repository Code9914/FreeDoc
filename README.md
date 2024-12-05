# README
-> Ce projet est une application Ruby on Rails permettant de gérer des relations entre médecins, patients, et leurs rendez-vous.

-> Fonctionnalités:

* Médecins peuvent gérer leurs spécialités et leurs rendez-vous.
* Patients peuvent être associés à plusieurs médecins via des rendez-vous.
* Chaque rendez-vous est unique et relie un médecin et un patient à une date précise.

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-> Doctor attributs:
*  first_name, last_name, specialty, zip_code

-> Relations:
*  has_many: appointments
*  has_many: patients, through: :appointments

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-> Patient attributs: 
*  first_name, last_name

-> Relations:
*  has_many: appointments
*  has_many: doctors, through: :appointments

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-> Appointment attributs: 
*  date, doctor_id, patient_id

-> Relations:
*  belongs_to :doctor
*  belongs_to :patient

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-> Prérequis:

*  Ruby 3.0+ et Rails 7.0+
*  Base de données SQLite (par défaut)

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-> Projet fait pour THP, pour apprendre et gérer les relations entre modèles dans Ruby on Rails.