require 'csv'

module RideShare
  class Trip
    attr_reader :id, :date, :rating, :driver_id, :rider_id

    def initialize(args)
      # puts args
      @id = args[:id]
      @driver_id = args[:driver_id]
      @rider_id = args[:rider_id]
      @date = args[:date]
      @rating = args[:rating]
    end

    def driver
      Driver.find(@driver_id)
    end

    def rider
      Rider.find(@rider_id)
    end

    def self.all
      list = []
      CSV.read("support/trips.csv").each do |line|
        t = Trip.new(id: line[0].to_i, driver_id: line[1].to_i, rider_id: line[2].to_i, date: line[3], rating: line[4].to_i)
        list << t
      end
      return list
    end

    def self.find(id)
      all.find { |trip| trip.id == id }
    end

    def self.find_by_driver(driver_id)
      all.select { |trip| trip.driver_id == driver_id }
    end

    def self.find_by_rider(rider_id)
      all.select { |trip| trip.rider_id == rider_id}
    end
  end
end
