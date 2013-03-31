# dopplr-data

Models for your trip data dump obtainable from Dopplr - based on the Smash model of api_smith.

### Usage

```ruby
require 'dopplr-data'
```

#### initialising from a parsed json string
```ruby
Dopplr::TripsData.new JSON.parse(json_str)
```

#### initialising from a json string

```ruby
Dopplr::TripsData.from_json_string json_str
```