import 'package:flutter/material.dart';
import 'text_style.dart';

// ignore: must_be_immutable
class Article extends StatelessWidget {
  final String imgPath;
  final String text;

  const Article({super.key, required this.imgPath, required this.text});

  @override
  Widget build(BuildContext context) {
    Image img = Image.asset(imgPath);
    Text txt = Text(
      text,
      style: MyTextStyles.h3Black,
    );

    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), child: img),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: txt,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
