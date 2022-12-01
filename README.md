This is a Temperature class created using bundle and rspec.
Given the temperature in the correct format (°C, °F or K) it can convert to any other temperature measure

## install gems
`bundle install`

## Usage
```
require 'temperature'

# convert 10°C to Celsius
Temperature.new('10°C').to_celsius

# convert 10°C to Fahrenheit
Temperature.new('10°C').to_fahrenheit

# convert 10°C to Kelvin
Temperature.new('10°C').to_kelvin
```


## run tests
`bundle exec rspec`

