$LOAD_PATH.unshift(File.dirname(__FILE__)) 
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'dopplr-data'
require 'rspec'

def fixture_file(fname)
  File.read(File.dirname(__FILE__) + "/fixtures/#{fname}")
end