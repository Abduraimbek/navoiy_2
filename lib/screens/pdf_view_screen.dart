import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/kitoblar.dart';
import 'package:navoiy_2/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PdfViewScreen2 extends StatelessWidget {
  static String routeName = '/PDFViewScreen';

  @override
  Widget build(BuildContext context) {
    final PDFViewScreenArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return PdfViewScreen(
      kitob: arguments.kitob,
    );
  }
}

class PdfViewScreen extends StatefulWidget {
  final Kitob kitob;

  const PdfViewScreen({
    Key key,
    @required this.kitob,
  }) : super(key: key);

  @override
  _PdfViewScreenState createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  int currentPageNumber = 0;
  bool _isLoading = true;
  PDFDocument document;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    loadDocument();
    loadPage();
  }

  loadPage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    currentPageNumber = pref.getInt(widget.kitob.cacheName);
    _controller = PageController(initialPage: currentPageNumber ?? 0);
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset(
      widget.kitob.url,
    );
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setInt(widget.kitob.cacheName, currentPageNumber);
        await pref.setString('oxirgi_uqish_title_111', widget.kitob.cacheName);
        _controller.dispose();
        Navigator.pop(context, '');
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: _isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : PDFViewer(
                    controller: _controller,
                    document: document,
                    zoomSteps: 1,
                    lazyLoad: false,
                    onPageChanged: (pageNum) {
                      currentPageNumber = pageNum;
                    },
                  ),
          ),
        ),
      ),
    );
  }
}

class PDFViewScreenArguments {
  final Kitob kitob;

  PDFViewScreenArguments(this.kitob);
}
