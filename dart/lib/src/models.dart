/// Response models for the Gold Price API.

/// API Response wrapper.
class GoldpriceResponse {
  final String status;
  final dynamic error;
  final GoldpriceData? data;

  GoldpriceResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GoldpriceResponse.fromJson(Map<String, dynamic> json) => GoldpriceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GoldpriceData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Gold Price API.

class GoldpriceData {
  String? currency;
  double? gram;
  double? kilogram;
  int? ounce;
  int? lastUpdated;

  GoldpriceData({
    this.currency,
    this.gram,
    this.kilogram,
    this.ounce,
    this.lastUpdated,
  });

  factory GoldpriceData.fromJson(Map<String, dynamic> json) => GoldpriceData(
      currency: json['currency'],
      gram: json['gram'],
      kilogram: json['kilogram'],
      ounce: json['ounce'],
      lastUpdated: json['lastUpdated'],
    );
}

class GoldpriceRequest {
  String? currency;

  GoldpriceRequest({
    this.currency,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
    };
}
