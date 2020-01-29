class Doctor
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
  
  def new_appointment(date, self, patient)
    Appointment.new(date, self, patient)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map(&:patient)
   # appointments.map {|appointment| appointment.patient}
end
end