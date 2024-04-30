import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:talha_s_app/presentation/link_scan_screen/controller/link_scan_controller.dart';
import 'package:talha_s_app/presentation/link_scan_two_screen/controller/link_scan_two_controller.dart';
import '../../core/app_export.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRScannerScreen> {
  Barcode? result;
  QRViewController? controller;
  LinkScanController linkController = LinkScanController();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Container(
              height: 50,
              child: Container(
                color: Color(0xFF49B6A9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.all(8),
                            child: InkWell(
                              onTap: () async =>
                                  {await controller?.toggleFlash()},
                              child: SvgPicture.asset(
                                ImageConstant.imgFlash,
                                height: 24,
                                width: 24,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            margin: const EdgeInsets.all(8),
                            child: InkWell(
                              onTap: () async =>
                                  {await controller?.flipCamera()},
                              child: SvgPicture.asset(
                                ImageConstant.imgChangeCamera,
                                height: 24,
                                width: 24,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      print(scanData);
      if (validateURL(scanData.code!)) {
        controller.pauseCamera();

        linkController.url = scanData.code!;
        Get.offNamed(AppRoutes.linkScanScreen,
            arguments: {'url': scanData.code!});
      } else {
        //showSnackbar('Info', "Please scan website link");
      }
    });
  }

  void showSnackbar(title, message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM, // Adjust position as needed
      duration: Duration(seconds: 3), // Adjust the duration as needed
      backgroundColor: appTheme.blueGray400, // Customize background color
      colorText: Colors.black, // Customize text color
      borderRadius: 10, // Customize border radius
    );
  }

  bool validateURL(String url) {
    // Define regex pattern for matching website URLs
    final RegExp urlRegex = RegExp(
      r'^(?:http|https):\/\/(?:www\.)?[a-zA-Z0-9]+\.[a-zA-Z]{2,}(?:\/\S*)?$',
    );

    // Check if the scanned QR code matches the regex pattern
    return urlRegex.hasMatch(url);
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
