module Dopplr
  
  class TripsData < APISmith::Smash

    property :trips, :transformer => lambda { |v| v.map{|t| Dopplr::Trip.new(t) } }
    
    def self.from_json_string(str)
      return nil if str.nil?
      TripsData.new JSON.parse(str)
    end
    
  end # TripsData
  
end # Dopplr
