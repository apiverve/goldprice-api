using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GoldPrice
{
    /// <summary>
    /// Query options for the Gold Price API
    /// </summary>
    public class GoldPriceQueryOptions
    {
        /// <summary>
        /// The currency to get the price in (USD, EUR, GBP, etc.)
        /// Example: USD
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }
    }
}
