require_relative 'spec_helper'

describe "Trip" do
  describe "Trip#initialize" do
    it "Takes an ID, driver id, rider id, date and rating" do
      trip = RideShare::Trip.new(id: 123, driver_id: 123, rider_id: 333, date: "2016-06-02", rating: 3)

      trip.must_respond_to :id
      trip.must_respond_to :date
      trip.must_respond_to :rating
    end
  end
end
