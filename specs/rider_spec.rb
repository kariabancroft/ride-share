require_relative 'spec_helper'

describe "Rider" do
  describe "Rider#initialize" do
    it "Takes an ID, name and phone num" do
      rider = RideShare::Rider.new(id: 123, name: "Jones", phone: "(777)777-7777")

      rider.must_respond_to :id
      rider.must_respond_to :name
      rider.must_respond_to :phone_num
    end
  end

  describe "all" do
    it "must be an array of rider objects" do
        result = RideShare::Rider.all
        result.must_be_instance_of Array

        result.each do |rider|
          rider.must_be_instance_of RideShare::Rider
        end
    end
  end

  describe "find" do
    it "must return a rider instance" do
      rider = RideShare::Rider.find(9)
      rider.must_be_instance_of RideShare::Rider
    end
  end

  describe "trips" do
    it "must return an array of trips" do
      trips = RideShare::Rider.find(9).trips
      trips.must_be_instance_of Array
      trips.each do |trip|
        trip.must_be_instance_of RideShare::Trip
      end
    end
  end

  describe "drivers" do
    it "must return an array of drivers" do
      drivers = RideShare::Rider.find(9).drivers
      drivers.must_be_instance_of Array
      drivers.each do |driver|
        driver.must_be_instance_of RideShare::Driver
      end
    end
  end
end
