module RideShare
  class Trip
    attr_reader :id, :date, :rating

    def initialize(args)
      @id = args[:id]
      @driver_id = args[:driver_id]
      @rider_id = args[:rider_id]
      @date = args[:date]
      @rating = args[:rating]
    end
  end
end
