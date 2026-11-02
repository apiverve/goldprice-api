Gold Price API
============

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies, karat prices, 7- and 30-day changes, 30-day stats, and hourly and daily history.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-goldprice.svg)](https://pypi.org/project/apiverve-goldprice/)

This is a Python wrapper for the [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-goldprice
```

Using `pip3`:

```bash
pip3 install apiverve-goldprice
```

---

## Configuration

Before using the Gold Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient

# Initialize the client with your APIVerve API key
api = GoldpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Gold Price API documentation is found here: [https://docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_goldprice.apiClient import GoldpriceAPIClient

# Initialize the client with your APIVerve API key
api = GoldpriceAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `GoldpriceAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient, GoldpriceAPIClientError

api = GoldpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except GoldpriceAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient, GoldpriceAPIClientError

api = GoldpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except GoldpriceAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient, GoldpriceAPIClientError

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Using context manager ensures proper cleanup
with GoldpriceAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except GoldpriceAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient

# Enable debug mode
api = GoldpriceAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_goldprice.apiClient import GoldpriceAPIClient

api = GoldpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
