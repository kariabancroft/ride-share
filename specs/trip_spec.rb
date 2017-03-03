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

  describe "all" do
    it "must be an array of trip objects" do
        result = RideShare::Trip.all
        result.must_be_instance_of Array

        result.each do |trip|
          trip.must_be_instance_of RideShare::Trip
        end
    end
  end

  describe "find" do
    it "must return a trip instance" do
      trip = RideShare::Trip.find(9)
      trip.must_be_instance_of RideShare::Trip
    end
  end

  describe "driver" do
    it "must return a driver instance" do
      driver = RideShare::Trip.find(9).driver
      driver.must_be_instance_of RideShare::Driver
    end
  end

  describe "rider" do
    it "must return a rider instance" do
      rider = RideShare::Trip.find(9).rider
      rider.must_be_instance_of RideShare::Rider
    end
  end
end
