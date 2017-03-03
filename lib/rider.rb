module RideShare
  class Rider
    attr_reader :id, :name, :phone_num

    def initialize(args)
      @id = args[:id]
      @name = args[:name]
      @phone_num = args[:phone]
    end
  end
end
