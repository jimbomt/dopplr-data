require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Dopplr::Trip do
  
  describe 'expected attributes/methods' do
    
    before do
      @trip = Dopplr::Trip.new nil
    end
    
    it "should respond to :id" do
      @trip.should respond_to :id
    end
    
    it "should respond to :city" do
      @trip.should respond_to :city
    end
    
    it "should respond to :start" do
      @trip.should respond_to :start
    end
    
    it "should respond to :finish" do
      @trip.should respond_to :finish
    end
    
    it "should respond to :outgoing_transport_type" do
      @trip.should respond_to :outgoing_transport_type
    end
    
    it "should respond to :return_transport_type" do
      @trip.should respond_to :return_transport_type
    end
    
    it "should respond to :url" do
      @trip.should respond_to :url
    end
    
    it "should respond to :tags" do
      @trip.should respond_to :tags
    end
    
  end # expected attributes/methods
  
  describe "json initialisation" do
    
    before do
      data = JSON.parse(fixture_file('sample.json'))
      @trip = Dopplr::Trip.new data['trips'][0]
    end
    
    it "should have id 87269" do
      @trip.id.should eql 87269
    end
    
    it "should return a city object" do
      @trip.city.class.should eql Dopplr::City
    end
    
    it "should return a start date object with value 2008-03-10" do
      @trip.start.should eql Date.parse('2008-03-10')
    end
    
    it "should return a finish date object with value 2008-03-13" do
      @trip.finish.should eql Date.parse('2008-03-13')
    end
    
    it "should have 'plane' as an outgoing transport type" do
      @trip.outgoing_transport_type.should eql 'plane'
    end

    it "should have 'plane' as a return transport type" do
      @trip.return_transport_type.should eql 'plane'
    end
    
    it "should return a URI object of the trip path on dopplr" do
      @trip.url.should eql URI.parse('http://www.dopplr.com/trip/jamesscicluna/87269')
    end
    
    it "should return the tags 'meeting' and 'super'" do
      @trip.tags.should include 'meeting'
      @trip.tags.should include 'super'
    end
    
  end # json initialisation
  
end