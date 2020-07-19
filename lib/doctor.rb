require 'pry'
require_relative "./appointment.rb"
class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def new_appointment(patient, date)
        new_appt = Appointment.new(date, patient, self)
        
    end

    def patients
        appointments.map do |dr_appt|
            dr_appt.patient
        end
    end

end