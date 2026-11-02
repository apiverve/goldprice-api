Gold Price API
============

Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies, karat prices, 7- and 30-day changes, 30-day stats, and hourly and daily history.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.GoldPrice.svg)](https://www.nuget.org/packages/APIVerve.API.GoldPrice)

This is a .NET wrapper for the [Gold Price API](https://apiverve.com/marketplace/goldprice?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.GoldPrice
```

Using the Package Manager:
```
nuget install APIVerve.API.GoldPrice
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.GoldPrice
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.GoldPrice"
5. Click on the APIVerve.API.GoldPrice package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Gold Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.GoldPrice;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

        var queryOptions = new GoldPriceQueryOptions {
            Currency = "USD",
            Hourly = true,
            Daily = true
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Gold Price API documentation is found here: [https://docs.apiverve.com/ref/goldprice](https://docs.apiverve.com/ref/goldprice?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Gold Price API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.GoldPrice;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

        var queryOptions = new GoldPriceQueryOptions {
            Currency = "USD",
            Hourly = true,
            Daily = true
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.GoldPrice;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

        var queryOptions = new GoldPriceQueryOptions {
            Currency = "USD",
            Hourly = true,
            Daily = true
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.GoldPrice;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

        var queryOptions = new GoldPriceQueryOptions {
            Currency = "USD",
            Hourly = true,
            Daily = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.GoldPrice;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new GoldPriceQueryOptions {
            Currency = "USD",
            Hourly = true,
            Daily = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new GoldPriceQueryOptions {
    Currency = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new GoldPriceQueryOptions {
    Currency = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new GoldPriceQueryOptions {
    Currency = "USD",
    Hourly = true,
    Daily = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new GoldPriceQueryOptions {
    Currency = "USD",
    Hourly = true,
    Daily = true
};

using (var apiClient = new GoldPriceAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
