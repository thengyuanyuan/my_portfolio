import 'package:flutter/material.dart';
import '../utils/download_file.dart';
import 'package:pdfx/pdfx.dart';

class PDFViewerDialog extends StatelessWidget {
  final String pdfAssetPath;
  final String pdfFileName;

  const PDFViewerDialog({
    super.key,
    required this.pdfAssetPath,
    required this.pdfFileName,
  });

  @override
  Widget build(BuildContext context) {
    final PdfControllerPinch pdfPinchController =
        PdfControllerPinch(document: PdfDocument.openAsset(pdfAssetPath));
    return Material(
      type: MaterialType.transparency,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.black,
            child: Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => downloadFile(pdfAssetPath, pdfFileName),
                    icon: const Icon(Icons.download),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: PdfViewPinch(
                controller: pdfPinchController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
