# [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies, karat prices, 7- and 30-day changes, 30-day stats, and hourly and daily history.

The Gold Price API provides a simple, reliable way to integrate gold price functionality into your applications. Built for developers who need production-ready gold price capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/goldprice?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/goldprice?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/goldprice)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.GoldPrice)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-goldprice/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_goldprice)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/goldprice)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_goldprice)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callGoldPriceAPI() {
    try {
        const response = await fetch('https://api.apiverve.com/v1/goldprice', {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callGoldPriceAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/goldprice" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/goldprice
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/goldprice) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.GoldPrice
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.GoldPrice) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-goldprice
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-goldprice/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_goldprice
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_goldprice) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/goldprice
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/goldprice) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_goldprice
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_goldprice) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:goldprice-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/goldprice-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Gold Price API is commonly used for:

- **Web Applications** - Add gold price features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with gold price capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Gold Price API:

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

---

## Support & Community

- 🏠 **API Home**: [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
