require 'csv'
require_relative 'patient'

class PatientRepository
  def initialize(room_repository)
    @patients = []
    load_csv
    @room_repository = room_repository
  end

  def add_patient(patient)
    patient.id = @next_id
    @patients << patient
    # save to csv
    @next_id += 1
  end

  def load_csv
    # Getting @patients from CSV
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1

    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach("patients.csv", csv_options) do |row|
    row[:id]    = row[:id].to_i          # Convert column to Fixnum
    row[:cured] = row[:cured] == "true"  # Convert column to boolean
    row[:room] = @room_repository.find(row[:room_id].to_i)
    @patients << Patient.new(row)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end
