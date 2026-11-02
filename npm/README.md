# Gold Price API

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies, karat prices, 7- and 30-day changes, 30-day stats, and hourly and daily history.

[![npm version](https://img.shields.io/npm/v/@apiverve/goldprice.svg)](https://www.npmjs.com/package/@apiverve/goldprice)

This is a JavaScript wrapper for the [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/goldprice
```

Using yarn:
```shell
yarn add @apiverve/goldprice
```

---

## Configuration

Before using the Gold Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Gold Price API documentation is found here: [https://docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const goldpriceAPI = require('@apiverve/goldprice');
const api = new goldpriceAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
