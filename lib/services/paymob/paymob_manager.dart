import 'package:dio/dio.dart';
import 'package:rail_ease/services/paymob/constants.dart';

class PaymobManager {
  final Dio _dio = Dio();

  Future<String> getAuthToken() async {
    try {
      Response response =
          await _dio.post("https://pakistan.paymob.com/api/auth/tokens", data: {
        'api_key': Constants.api_key,
      });
      return response.data['token'];
    } catch (e) {
      print("Error occurred while getting auth token: $e");
      throw e;
    }
  }

  Future<String> getOrderId(
      String authToken, int totalPrice, String currency) async {
    try {
      Response response = await _dio.post(
        " https://pakistan.paymob.com/api/ecommerce/orders",
        data: {
          "auth_token": authToken,
          "delivery_needed": "false",
          "amount_cents": "$totalPrice",
          "currency": currency,
          "items": [],
        },
      );
      return response.data['id'].toString();
    } catch (e) {
      print("Error occurred while getting order ID: $e");
      throw e;
    }
  }

  Future<String> getPaymentKey(int totalPrice, String currency) async {
    try {
      String authToken = await getAuthToken();
      String orderId = await getOrderId(authToken, totalPrice, currency);

      Response response = await _dio.post(
        " https://pakistan.paymob.com/api/acceptance/payment_keys",
        data: {
          "auth_token": authToken,
          "amount_cents": "$totalPrice",
          "expiration": 3600,
          "order_id": orderId,
          "billing_data": {
            "apartment": "NA",
            "email": "test@example.com",
            "floor": "NA",
            "first_name": "NA",
            "street": "NA",
            "building": "NA",
            "phone_number": "0123456789",
            "shipping_method": "NA",
            "postal_code": "NA",
            "city": "NA",
            "country": "NA",
            "last_name": "NA",
            "state": "NA",
          },
          "currency": currency,
          "integration_id": Constants.integration_id,
        },
      );
      return response.data['token'];
    } catch (e) {
      print("Error occurred while getting payment key: $e");
      throw e;
    }
  }
}
