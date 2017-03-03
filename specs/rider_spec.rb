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
end
