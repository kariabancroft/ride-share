require_relative 'spec_helper'

describe "Driver" do
  describe "Driver#initialize" do
    it "Takes an ID, name and vehicle identification num" do
      driver = RideShare::Driver.new(id: 213, name: "Ada", vin: "WBWSS52P9NEYLVDE9")

      driver.must_respond_to :id
      driver.must_respond_to :name
      driver.must_respond_to :vin
    end
  end

  describe "all" do
    it "must be an array of driver objects" do
        result = RideShare::Driver.all
        result.must_be_instance_of Array

        result.each do |driver|
          driver.must_be_instance_of RideShare::Driver
        end
    end
  end

  describe "find" do
    it "must return a driver instance" do
      driver = RideShare::Driver.find(9)
      driver.must_be_instance_of RideShare::Driver
    end
  end

  describe "trips" do
    it "must return an array of trip instances" do
      trips = RideShare::Driver.find(2).trips
      trips.must_be_instance_of Array
      trips.each do |trip|
        trip.must_be_instance_of RideShare::Trip
      end
    end
  end

  describe "average rating" do
    it "must return a float value" do
      rating = RideShare::Driver.find(2).average_rating
      rating.must_be_instance_of Float
    end
  end
end
