import 'package:flutter_bkash/flutter_bkash.dart';
import 'package:get/get.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/popups/full_screen_loader.dart';

class PaymentController extends GetxController{
  static PaymentController get instance => Get.find();


  /// Bkash Payment
  Future<void> paymentCheckout(double amount) async {
    // sandbox
    final flutterBkash = FlutterBkash();

    // production
    // final flutterBkash = FlutterBkash(
    //   bkashCredentials: BkashCredentials(
    //     username: "app_username",
    //     password: "app_password",
    //     appKey: "app_key",
    //     appSecret: "app_secret",
    //     isSandbox: false,
    //   ),
    // );

    /// Goto BkashPayment page & pass the params
    try {
      FullScreenLoader.openLoadingDialog('Processing..', AppImages.loading);
      /// call pay method to pay without agreement as parameter pass the context, amount, merchantInvoiceNumber
      final result = await flutterBkash.pay(
        context: Get.overlayContext!,
        // need the context as BuildContext
        amount: amount,
        // need it double type
        merchantInvoiceNumber: "tranId",
      );

      /// if the payment is success then show the log
      print(result.toString());

      /// if the payment is success then show the snack-bar
      AppHelperFunctions.showSnackBar("(Success) tranId: ${result.trxId}");
    } on BkashFailure catch (e, st) {
      /// if something went wrong then show the log
      print(e.message);
      print(st);

      /// if something went wrong then show the snack-bar
      AppHelperFunctions.showSnackBar(e.message);
    } catch (e, st) {
      /// if something went wrong then show the log
      print(e);
      print(st);

      /// if something went wrong then show the snack-bar
      AppHelperFunctions.showSnackBar("Something went wrong");
    }
    FullScreenLoader.stopLoading();
    return;
  }
}