require 'pry'
class Appointment

    @@all = []

    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    # def patient(name)
    #     Patient.all.select do |patient|
    #         patient.appointment == self
    #     end
    # end

end