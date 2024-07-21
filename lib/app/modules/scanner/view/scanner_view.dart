import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({Key? key}) : super(key: key);

  static const routeName = '/qrScreen';

  @override
  QrScannerScreenState createState() => QrScannerScreenState();
}

class QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? qrViewController;
  // ScanController controller = ScanController();

  @override
  void dispose() {
    qrViewController?.dispose();
    qrViewController?.stopCamera();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrViewController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrViewController!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            StreamBuilder<Object>(
              stream: qrViewController?.scannedDataStream,
              builder: (context, snapshot) {
                return QRView(
                  key: qrKey,
                  onQRViewCreated: onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                      cutOutSize: MediaQuery.of(context).size.height * 0.5),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  onQRViewCreated(QRViewController qrViewController) {
    this.qrViewController = qrViewController;
    qrViewController.scannedDataStream.listen((qrData) {
      qrViewController.pauseCamera();
      final String qrCode = qrData.code ?? "";
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => SendMoneyQrFormScreen(
      //               userQr: '$qrCode',
      //             ))).then((value) => qrViewController.resumeCamera());
    });
  }
}
