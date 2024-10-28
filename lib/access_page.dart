import 'package:flutter/material.dart';
import 'text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class Access extends StatelessWidget {
  const Access({
    super.key,
  });

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(
        scheme: 'https', host: 'maps.app.goo.gl', path: '6FiXTRua79jFiBsY7/');
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Access',
                  style: MyTextStyles.h1BoldBlack,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '会社情報',
                  style: MyTextStyles.h2Black,
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () async {
                    _launchInBrowser(toLaunch);
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/map.png')),
                ),
                const SizedBox(
                  height: 30,
                ),
                Table(
                  columnWidths: const <int, TableColumnWidth>{
                    // 0: IntrinsicColumnWidth(),
                    // 1: FlexColumnWidth(6),
                    // 2: FixedColumnWidth(100),
                    0: FixedColumnWidth(130),
                    1: FixedColumnWidth(250),
                  },
                  children: const <TableRow>[
                    TableRow(
                        children: <Widget>[Text('学校名'), Text('チーズアカデミーTOKYO')]),
                    TableRow(children: <Widget>[
                      Text('事務所所在地'),
                      Text('〒107-0061東京都港区北青山3-5-6 青朋ビル2F')
                    ]),
                    TableRow(
                        children: <Widget>[Text('TEL'), Text('03-5413-5045')]),
                    TableRow(
                        children: <Widget>[Text('FAX'), Text('03-5413-5046')]),
                    TableRow(children: <Widget>[
                      Text('MAIL'),
                      Text('dummy@cheeseacademy.tokyo')
                    ]),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
