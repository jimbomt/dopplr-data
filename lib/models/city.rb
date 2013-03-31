module Dopplr
  
  class City < APISmith::Smash
    
    property :country_code
    property :country
    property :name
    property :latitude
    property :longitude
    property :geoname_id
    property :woeid
    property :url, :transformer => Dopplr::URL_TRANSFORMER
    property :rgb
    
  end
  
end # Dopplr