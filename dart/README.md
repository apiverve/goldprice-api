# Gold Price API - Dart/Flutter Client

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies, karat prices, 7- and 30-day changes, 30-day stats, and hourly and daily history.

[![pub package](https://img.shields.io/pub/v/apiverve_goldprice.svg)](https://pub.dev/packages/apiverve_goldprice)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_goldprice: ^1.2.4
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_goldprice/apiverve_goldprice.dart';

void main() async {
  final client = GoldpriceClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'currency': 'USD',
      'hourly': true,
      'daily': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "gram": 129.25,
    "kilogram": 129251.92,
    "ounce": 4020.19,
    "lastUpdated": "2026-10-27T12:00:00.000Z",
    "change24h": 11.88,
    "change24hPct": 0.3,
    "changeDirection": "up",
    "high24h": 4020.19,
    "low24h": 4008.31,
    "change7d": -102.49,
    "change7dPct": -2.49,
    "change30d": -265.95,
    "change30dPct": -6.2,
    "high30d": 4198.91,
    "low30d": 3993.62,
    "average30d": 4132.9,
    "volatility30d": 0.7777,
    "daily": [
      {
        "date": "2026-09-28",
        "price": 4198.34
      },
      {
        "date": "2026-09-29",
        "price": 4129.1
      },
      {
        "date": "2026-09-30",
        "price": 4181.49
      },
      {
        "date": "2026-10-01",
        "price": 4182.57
      },
      {
        "date": "2026-10-02",
        "price": 4185.41
      },
      {
        "date": "2026-10-03",
        "price": 4137.55
      },
      {
        "date": "2026-10-04",
        "price": 4137.54
      },
      {
        "date": "2026-10-05",
        "price": 4131.88
      },
      {
        "date": "2026-10-06",
        "price": 4122.7
      },
      {
        "date": "2026-10-07",
        "price": 4132.77
      },
      {
        "date": "2026-10-08",
        "price": 4125.82
      },
      {
        "date": "2026-10-09",
        "price": 4198.91
      },
      {
        "date": "2026-10-10",
        "price": 4195.82
      },
      {
        "date": "2026-10-11",
        "price": 4195.81
      },
      {
        "date": "2026-10-12",
        "price": 4186.27
      },
      {
        "date": "2026-10-13",
        "price": 4188.41
      },
      {
        "date": "2026-10-14",
        "price": 4158.44
      },
      {
        "date": "2026-10-15",
        "price": 4144.7
      },
      {
        "date": "2026-10-16",
        "price": 4182.94
      },
      {
        "date": "2026-10-17",
        "price": 4164.68
      },
      {
        "date": "2026-10-18",
        "price": 4164.67
      },
      {
        "date": "2026-10-19",
        "price": 4180.55
      },
      {
        "date": "2026-10-20",
        "price": 4122.68
      },
      {
        "date": "2026-10-21",
        "price": 4120.33
      },
      {
        "date": "2026-10-22",
        "price": 4091.63
      },
      {
        "date": "2026-10-23",
        "price": 4010.3
      },
      {
        "date": "2026-10-24",
        "price": 3993.62
      },
      {
        "date": "2026-10-25",
        "price": 3993.62
      },
      {
        "date": "2026-10-26",
        "price": 4008.31
      },
      {
        "date": "2026-10-27",
        "price": 4020.19
      }
    ],
    "marketStatus": "open",
    "karatGram": {
      "24k": 129.25,
      "22k": 118.48,
      "21k": 113.09,
      "18k": 96.94,
      "14k": 75.4,
      "10k": 53.85
    },
    "formatted": {
      "ounce": "$4,020.19",
      "gram": "$129.25",
      "kilogram": "$129,251.92",
      "ounceWords": "four thousand, twenty dollars",
      "kilogramWords": "one hundred twenty-nine thousand, two hundred fifty-two dollars"
    }
  }
}
```

## API Reference

- **API Home:** [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
