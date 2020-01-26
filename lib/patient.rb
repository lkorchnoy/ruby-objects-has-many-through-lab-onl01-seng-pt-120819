class Patient
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
end

def self.all
    @@all
end

def new_appointment(doctor, date)
  appointment.patient = new_appointment
end

def appointments
  Appointment.all.select {|appointment| appointment.patient}
  
end

def doctors(appointments)
  appointments.map {|appointment| appointment.doctor}
end
  
  
end