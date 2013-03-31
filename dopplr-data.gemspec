Gem::Specification.new do |s|
  s.name        = 'dopplr-data'
  s.version     = '0.0.1'
  s.date        = '2013-03-31'
  s.summary     = "parser for JSON data pulled from dopplr.com"
  s.description = "parser for JSON data pulled from dopplr.com"
  s.authors     = ["James Scicluna"]
  s.email       = 'james.scicluna@gmail.com'
  #s.files       = ["lib/dopplr-data.rb"]
  s.homepage    ='TODO'
  
  # inclusions
  s.require_paths = ['lib']
  
  # dependencies
  s.add_dependency 'rspec'
  s.add_dependency 'api_smith'
end