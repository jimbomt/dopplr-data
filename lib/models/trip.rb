module Dopplr
  
  class Trip < APISmith::Smash
    
    property :id
    property :city, :transformer => lambda { |v| Dopplr::City.new(v) }
    property :start, :transformer => Dopplr::DATE_TRANSFORMER
    property :finish, :transformer => Dopplr::DATE_TRANSFORMER
    property :outgoing_transport_type
    property :return_transport_type
    property :url, :transformer => Dopplr::URL_TRANSFORMER
    property :tags, :from => :tag
    
  end # Trip
  
end # Dopplr