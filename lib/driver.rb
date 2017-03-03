module RideShare
  class Driver
    attr_reader :id, :name, :vin
    
    def initialize(args)
      @id = args[:id]
      @name = args[:name]
      @vin = args[:vin]
    end
  end
end
