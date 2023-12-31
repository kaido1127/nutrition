import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'barcode_controller.g.dart';

@riverpod
class BarcodeController extends _$BarcodeController {
  @override
  String build() {
    return '';
  }

  Future<void> startScan() async {
    print("Start Scan");
    ref.read(searchTextFieldControllerProvider.notifier).changeText('');
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {

      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    state = barcodeScanRes;
  }

  Future<void> stopScan() async {
    state = '';
  }
}
