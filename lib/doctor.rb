
class Doctor

    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.collect {|appt| appt.patient}
    end
end