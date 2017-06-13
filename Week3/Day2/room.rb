require_relative 'patient'

class Room
  attr_accessor :id

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    fail Exception, "Room is full!" if full?
    @patients << patient
    patient.room = self
  end
end



room_1 = Room.new(capacity: 2)
john = Patient.new(name: "John")
ringo = Patient.new(name: "Ringo")
paul = Patient.new(name: "Paul")

begin
  rooom1.add_patient(john)
  rooom1.add_patient(ringo)
  rooom1.add_patient(paul)

rescue Exception => e
  puts "Sorry, room is full"
end
  puts "Sucessfully done"
