# Gold Price API - PHP Package

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the price update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies and hourly history.

## Installation

Install via Composer:

```bash
composer require apiverve/goldprice
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Goldprice\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'currency' => 'USD',
    'hourly' => true,
    'hourly[].hour' => 0,
    'hourly[].price' => 0,
    'hourly[].timestamp' => ''
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Goldprice\Client;
use APIVerve\Goldprice\Exceptions\APIException;
use APIVerve\Goldprice\Exceptions\ValidationException;

try {
    $response = $client->execute(['currency' => 'USD', 'hourly' => true, 'hourly[].hour' => 0, 'hourly[].price' => 0, 'hourly[].timestamp' => '']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/goldprice?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/goldprice?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/goldprice?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
