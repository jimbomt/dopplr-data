# encoding: utf-8

require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Dopplr::City do
  
  describe "expected attributes/methods" do
    
    before do
      @city = Dopplr::City.new nil
    end
    
    it "should respond to :country_code" do
      @city.should respond_to :country_code
    end
    
    it "should respond to :country" do
      @city.should respond_to :country
    end
    
    it "should respond to :name" do
      @city.should respond_to :name
    end
    
    it "should respond to :woeid" do
      @city.should respond_to :woeid
    end
    
    it "should respond to :latitude" do
      @city.should respond_to :latitude
    end
    
    it "should respond to :longitude" do
      @city.should respond_to :longitude
    end
    
    it "should repsond to :rgb" do
      @city.should respond_to :rgb
    end
    
    it "should respond to :geoname_id" do
      @city.should respond_to :geoname_id
    end
    
    it "should respond to :url" do
      @city.should respond_to :url
    end
    
  end # expected attributes/methods
  
  describe "json initialisation" do
    
    before do
      data = JSON.parse(fixture_file('sample.json'))['trips'][0]['city']
      @city = Dopplr::City.new data
    end
    
    it "should return country code 'DE'" do
      @city.country_code.should eql 'DE'
    end
    
    it "should return country 'Germany'" do
      @city.country.should eql 'Germany'
    end
    
    it "should return name 'Saarbrücken, Landeshauptstadt" do
      @city.name.should eql 'Saarbrücken, Landeshauptstadt'
    end
    
    it "should return latitude 49.2461" do
      @city.latitude.should eql 49.2461
    end
    
    it "should return longitude 7.0022" do
      @city.longitude.should eql 7.0022
    end
    
    it "should return woeid '690631'" do
      @city.woeid.should eql '690631'
    end
    
    it "should return geoname_id 6551163" do
      @city.geoname_id.should eql 6551163
    end
    
    it "should return the correct url" do
      @city.url.should eql URI.parse("http://www.dopplr.com/place/de/saarbr%C3%BCcken,-landeshauptstadt")
    end
    
  end # json initialisation
  
end # Dopplor::City