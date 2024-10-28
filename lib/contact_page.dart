import 'package:flutter/material.dart';
import 'text_style.dart';

class Contact extends StatelessWidget {
  const Contact({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
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
                  'Contact',
                  style: MyTextStyles.h1BoldBlack,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '説明会お申し込み・お問い合わせ',
                  style: MyTextStyles.h3Black,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'ぜひ1度、足を運んでみませんか。説明会は随時開催中。\nその他、お問い合わせもお気軽にどうぞ。お待ちしております。',
                  style: MyTextStyles.h3Black,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '※チーズアカデミーは実際には存在しません。\n間違っても問い合わせしないようお願いいたします。',
                  style: MyTextStyles.h3Black,
                ),
                const SizedBox(
                  height: 30,
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    // 0: IntrinsicColumnWidth(),
                    // 1: FlexColumnWidth(6),
                    // 2: FixedColumnWidth(100),
                    0: FixedColumnWidth(150),
                    1: FixedColumnWidth(300),
                  },
                  children: <TableRow>[
                    const TableRow(children: <Widget>[Text('名前'), TextField()]),
                    const TableRow(children: <Widget>[
                      Text('カナ'),
                      TextField(),
                    ]),
                    const TableRow(
                        children: <Widget>[Text('メールアドレス'), TextField()]),
                    TableRow(children: <Widget>[
                      const Text('チーズアカデミーを\n知ったきっかけ'),
                      DropdownButton(
                        items: const [
                          DropdownMenuItem(
                            value: 'a',
                            child: Text('google検索'),
                          ),
                          DropdownMenuItem(
                            value: 'b',
                            child: Text('SNS'),
                          ),
                          DropdownMenuItem(
                            value: 'c',
                            child: Text('紹介'),
                          ),
                          DropdownMenuItem(
                            value: 'd',
                            child: Text('たまたま通りかかった'),
                          ),
                          DropdownMenuItem(
                            value: 'e',
                            child: Text('その他'),
                          ),
                        ],
                        onChanged: (value) {},
                      )
                    ]),
                    const TableRow(children: <Widget>[
                      Text('志望動機'),
                      Column(
                        children: [
                          CheckboxListTile(
                            value: false,
                            onChanged: null,
                            title: Text('起業をしたい'),
                          ),
                          CheckboxListTile(
                            value: false,
                            onChanged: null,
                            title: Text('チーズ系企業に就職・転職したい'),
                          ),
                          CheckboxListTile(
                            value: false,
                            onChanged: null,
                            title: Text('チーズと関わる仕事をしており、仕事に生かしたい'),
                          ),
                          CheckboxListTile(
                            value: false,
                            onChanged: null,
                            title: Text('チーズの教養を身につけたい'),
                          ),
                        ],
                      )
                    ]),
                    const TableRow(children: <Widget>[
                      Text('詳細'),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Comment ✍️",
                          // focusedBorder: _inputBorder,
                          // enabledBorder: _inputBorder,
                        ),
                      )
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ElevatedButton(onPressed: null, child: Text('提出')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
