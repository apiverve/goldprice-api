/// Response models for the Gold Price API.

/// API Response wrapper.
class GoldpriceResponse {
  final String status;
  final dynamic error;
  final GoldpriceData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GoldpriceResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GoldpriceResponse.fromJson(Map<String, dynamic> json) => GoldpriceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GoldpriceData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Gold Price API.

class GoldpriceData {
  String? currency;
  num? gram;
  num? kilogram;
  num? ounce;
  String? lastUpdated;
  num? change24h;
  num? change24hPct;
  String? changeDirection;
  num? high24h;
  num? low24h;
  num? change7d;
  num? change7dPct;
  num? change30d;
  num? change30dPct;
  num? high30d;
  num? low30d;
  num? average30d;
  num? volatility30d;
  List<GoldpriceDataDailyItem>? daily;
  String? marketStatus;
  GoldpriceDataKaratgram? karatGram;
  GoldpriceDataFormatted? formatted;

  GoldpriceData({
    this.currency,
    this.gram,
    this.kilogram,
    this.ounce,
    this.lastUpdated,
    this.change24h,
    this.change24hPct,
    this.changeDirection,
    this.high24h,
    this.low24h,
    this.change7d,
    this.change7dPct,
    this.change30d,
    this.change30dPct,
    this.high30d,
    this.low30d,
    this.average30d,
    this.volatility30d,
    this.daily,
    this.marketStatus,
    this.karatGram,
    this.formatted,
  });

  factory GoldpriceData.fromJson(Map<String, dynamic> json) => GoldpriceData(
      currency: json['currency'],
      gram: json['gram'],
      kilogram: json['kilogram'],
      ounce: json['ounce'],
      lastUpdated: json['lastUpdated'],
      change24h: json['change24h'],
      change24hPct: json['change24hPct'],
      changeDirection: json['changeDirection'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      change7d: json['change7d'],
      change7dPct: json['change7dPct'],
      change30d: json['change30d'],
      change30dPct: json['change30dPct'],
      high30d: json['high30d'],
      low30d: json['low30d'],
      average30d: json['average30d'],
      volatility30d: json['volatility30d'],
      daily: (json['daily'] as List?)?.map((e) => GoldpriceDataDailyItem.fromJson(e)).toList(),
      marketStatus: json['marketStatus'],
      karatGram: json['karatGram'] != null ? GoldpriceDataKaratgram.fromJson(json['karatGram']) : null,
      formatted: json['formatted'] != null ? GoldpriceDataFormatted.fromJson(json['formatted']) : null,
    );
}

class GoldpriceDataDailyItem {
  String? date;
  num? price;

  GoldpriceDataDailyItem({
    this.date,
    this.price,
  });

  factory GoldpriceDataDailyItem.fromJson(Map<String, dynamic> json) => GoldpriceDataDailyItem(
      date: json['date'],
      price: json['price'],
    );
}

class GoldpriceDataKaratgram {
  num? 24k;
  num? 22k;
  num? 21k;
  num? 18k;
  num? 14k;
  num? 10k;

  GoldpriceDataKaratgram({
    this.24k,
    this.22k,
    this.21k,
    this.18k,
    this.14k,
    this.10k,
  });

  factory GoldpriceDataKaratgram.fromJson(Map<String, dynamic> json) => GoldpriceDataKaratgram(
      24k: json['24k'],
      22k: json['22k'],
      21k: json['21k'],
      18k: json['18k'],
      14k: json['14k'],
      10k: json['10k'],
    );
}

class GoldpriceDataFormatted {
  String? ounce;
  String? gram;
  String? kilogram;
  String? ounceWords;
  String? kilogramWords;

  GoldpriceDataFormatted({
    this.ounce,
    this.gram,
    this.kilogram,
    this.ounceWords,
    this.kilogramWords,
  });

  factory GoldpriceDataFormatted.fromJson(Map<String, dynamic> json) => GoldpriceDataFormatted(
      ounce: json['ounce'],
      gram: json['gram'],
      kilogram: json['kilogram'],
      ounceWords: json['ounceWords'],
      kilogramWords: json['kilogramWords'],
    );
}

class GoldpriceRequest {
  String? currency;
  bool? hourly;
  bool? daily;

  GoldpriceRequest({
    this.currency,
    this.hourly,
    this.daily,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
      if (hourly != null) 'hourly': hourly,
      if (daily != null) 'daily': daily,
    };
}
