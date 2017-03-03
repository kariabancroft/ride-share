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
end
