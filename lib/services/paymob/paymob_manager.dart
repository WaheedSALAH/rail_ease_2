import 'package:dio/dio.dart';
import 'package:rail_ease/services/paymob/constants.dart';

class PaymobManager {
  Dio dio = Dio();

  Future<String> postToken() async {
    try {
      Response response = await dio.post(
        'https://accept.paymobsolutions.com/api/auth/tokens',
        data: {"api_key": Constants.api_key},
      );
      return response.data['token'];
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getOrderId({
    required String token,
    required double amount, // Change amount to double
  }) async {
    try {
      Response response = await dio.post(
        'https://accept.paymobsolutions.com/api/ecommerce/orders',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          "auth_token": token,
          "delivery_needed": "false",
          "amount_cents": (amount * 100)
              .toInt()
              .toString(), // Multiply by 100 and convert to int
          "currency": "EGP",
          "items": [],
        },
      );
      return response.data['id'];
    } catch (e) {
      rethrow;
    }
  }

  Future<String> requestPaymentKey({
    required String authToken,
    required String orderId,
    required double amountPounds, // Change amount to double
    required Map<String, String> billingData,
  }) async {
    try {
      Response response = await dio.post(
        'https://accept.paymobsolutions.com/api/acceptance/payment_keys',
        options: Options(headers: {'Authorization': 'Bearer $authToken'}),
        data: {
          'auth_token': authToken,
          'amount_cents': (amountPounds * 100)
              .toInt()
              .toString(), // Multiply by 100 and convert to int
          'expiration': 3600,
          'order_id': orderId,
          'billing_data': billingData,
          'currency': 'EGP',
          'integration_id': Constants.integration_id,
        },
      );
      return response.data['token'];
    } catch (e) {
      rethrow;
    }
  }
}
