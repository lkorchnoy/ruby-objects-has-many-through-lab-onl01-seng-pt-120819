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
  Appointment.new(doctor, self, date)
end

def appointments
  Appointment.all.select {|appointment| appointment.patient == self}
  
end

def doctors
  appointments.map(&:doctor)
  # appointments.map {|appointment| appointment.doctor}
end
  
  
end