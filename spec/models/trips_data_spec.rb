require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Dopplr::TripsData do
  
  describe "expected attributes/methods" do
    
    before do
      @td = Dopplr::TripsData.new nil
    end
    
    it "should respond to :trips" do
      @td.should respond_to :trips
    end

    it "should respond to :from_json_string" do
      Dopplr::TripsData.should respond_to :from_json_string
    end
    
  end # expected attributes/method
  
  describe "json initialisation" do
    
    before do
      data = JSON.parse(fixture_file('sample.json'))
      @td = Dopplr::TripsData.new data
    end
    
    it "should return a set of trip models" do
      @td.trips.should_not be_empty
      @td.trips.first.class.should eql Dopplr::Trip
    end
    
    it "should be correctly initialised from a json string" do
      trips_data = Dopplr::TripsData.from_json_string fixture_file('sample.json')
      trips_data.should_not be_nil
      trips_data.trips.should_not be_empty
    end
    
  end # json initialisation
  
end # Dopplr::TripsData