# Gold Price API - Dart/Flutter Client

Gold Price is a simple tool for getting the current price of gold. It returns the current price of gold in any currency and in various units.

[![pub package](https://img.shields.io/pub/v/apiverve_goldprice.svg)](https://pub.dev/packages/apiverve_goldprice)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gold Price API](https://goldprice.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_goldprice: ^1.1.14
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
      'currency': 'USD'
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
    "gram": 103.71,
    "kilogram": 103705.56,
    "ounce": 2940,
    "lastUpdated": 1740074702
  }
}
```

## API Reference

- **API Home:** [Gold Price API](https://goldprice.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
