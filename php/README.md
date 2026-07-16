# Gold Price API - PHP Package

Gold Price is a simple tool for getting the current price of gold. It returns the current price of gold in any currency and in various units.

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
    'hourly' => true
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
    $response = $client->execute(['currency' => 'USD', 'hourly' => true]);
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
    "gram": 152.1,
    "kilogram": 152101.49,
    "ounce": 4312,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "change24h": 28.5,
    "change24hPct": 0.67,
    "changeDirection": "up",
    "high24h": 4325,
    "low24h": 4278.5,
    "formatted": {
      "ounce": "$4,312.00",
      "gram": "$152.10",
      "kilogram": "$152,101.49",
      "ounceWords": "four thousand three hundred twelve dollars",
      "kilogramWords": "one hundred fifty-two thousand one hundred one dollars"
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/goldprice?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://goldprice.apiverve.com?utm_source=php&utm_medium=readme](https://goldprice.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
