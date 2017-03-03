require 'csv'

module RideShare
  class Rider
    attr_reader :id, :name, :phone_num

    def initialize(args)
      @id = args[:id]
      @name = args[:name]
      @phone_num = args[:phone]
      @trips = []
      @drivers = []
    end

    def trips
      @trips ||= Trip.find_by_rider(@id)
    end

    def drivers
      @drivers ||= trips.map {|t| t.driver }
    end

    def self.all
      list = []
      CSV.read("support/riders.csv").each do |line|
        r = Rider.new(id: line[0].to_i, name: line[1], phone: line[2])
        list << r
      end
      return list
    end

    def self.find(id)
      all.find { |rider| rider.id == id }
    end
  end
end
