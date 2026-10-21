# Gold Price API - Ruby Gem

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the price update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies and hourly history.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_goldprice'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_goldprice
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_goldprice'

# Initialize the client
client = APIVerve::Goldprice::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency: "USD",
  hourly: true,
  hourly[].hour: 0,
  hourly[].price: 0,
  hourly[].timestamp: ""
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "USD", hourly: true, hourly[].hour: 0, hourly[].price: 0, hourly[].timestamp: "" })
  puts response["data"]
rescue APIVerve::Goldprice::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Goldprice::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Goldprice::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "gram": 138.63,
    "kilogram": 138633.92,
    "ounce": 4312,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "change24h": 28.5,
    "change24hPct": 0.67,
    "changeDirection": "up",
    "high24h": 4325,
    "low24h": 4278.5,
    "formatted": {
      "ounce": "$4,312.00",
      "gram": "$138.63",
      "kilogram": "$138,633.92",
      "ounceWords": "four thousand, three hundred twelve dollars",
      "kilogramWords": "one hundred thirty-eight thousand, six hundred thirty-four dollars"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/goldprice?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/goldprice?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/goldprice?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
