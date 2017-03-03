require 'csv'
# require_relative 'trip'

module RideShare
  class Driver
    attr_reader :id, :name, :vin

    def initialize(args)
      @id = args[:id]
      @name = args[:name]
      @vin = args[:vin]
    end

    def average_rating
      ratings = trips.map{|t| t.rating}
      sum = ratings.reduce(:+)

      sum / ratings.length.to_f
    end

    def trips
      RideShare::Trip.find_by_driver(@id)
    end

    def self.all
      list = []
      CSV.read("support/drivers.csv").each do |line|
        d = Driver.new(id: line[0].to_i, name: line[1], vin: line[2])
        list << d
      end
      return list
    end

    def self.find(id)
      all.find { |driver| driver.id == id }
    end
  end
end
