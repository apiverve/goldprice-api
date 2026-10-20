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
        /// The currency to get the price in
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }

        /// <summary>
        /// Include hourly price data for the past 24 hours
        /// </summary>
        [JsonProperty("hourly")]
        public bool? Hourly { get; set; }

        /// <summary>
        /// UTC hour-of-day slot (0-23) the price was captured in
        /// </summary>
        [JsonProperty("hourly[].hour")]
        public double? Hourly[].hour { get; set; }

        /// <summary>
        /// Price at that hour, in the requested currency
        /// </summary>
        [JsonProperty("hourly[].price")]
        public double? Hourly[].price { get; set; }

        /// <summary>
        /// ISO 8601 time the hourly price was captured
        /// </summary>
        [JsonProperty("hourly[].timestamp")]
        public string Hourly[].timestamp { get; set; }
    }
}
