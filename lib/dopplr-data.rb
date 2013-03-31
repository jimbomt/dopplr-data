# set default encoding
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

module Dopplr
  
  # external lib requires
  require 'api_smith'
  require 'json'
  require 'date'
  require 'net/http'
  
  # requires for the library itself
  require File.dirname(__FILE__) + '/constants.rb'
  require File.dirname(__FILE__) + '/models/trip.rb'
  require File.dirname(__FILE__) + '/models/city.rb'
  require File.dirname(__FILE__) + '/models/trips_data.rb'
  
end # Dopplr

