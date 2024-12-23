String apiUrl = "https://osoncor.tj/api";
String paymentUrl = "Your API URL for Payment. If it is same as 'apiUrl' then paste it same here";

String playstoreUrl = "Your Provider App Google Play Store Api";

Map<String, String>? headersToken(token) => {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      "Authorization": "Bearer $token"
    };

Map<String, String>? get headers =>
    {'Accept': 'application/json', 'Content-Type': 'application/json'};
