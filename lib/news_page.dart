import 'package:flutter/material.dart';
import 'text_style.dart';
import 'article.dart';

class NewsArticle {
  late Image img;
  late Text txt;
  NewsArticle(String imgPath, String text) {
    img = Image.asset(imgPath);
    txt = Text(
      text,
      style: MyTextStyles.h3Black,
    );
  }
  Column getRow() {
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

class News extends StatelessWidget {
  const News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    NewsArticle newsArticle = NewsArticle('assets/images/news_img.jpg',
        'チーズアカデミー卒業生のコスゲさんによるチーズだけをふんだんに使用した話題のピザ屋「Kosuge Pizza」が渋谷でオープンしました！');
    Article art = const Article(
      imgPath: 'assets/images/news_img.jpg',
      text:
          'チーズアカデミー卒業生のコスゲさんによるチーズだけをふんだんに使用した話題のピザ屋「Kosuge Pizza」が渋谷でオープンしました！',
    );
    return SingleChildScrollView(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Text(
                'News',
                style: MyTextStyles.h1BoldYellow,
              ),
              const SizedBox(
                height: 10,
              ),
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              art,
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
              newsArticle.getRow(),
            ]),
      ),
    );
  }
}
