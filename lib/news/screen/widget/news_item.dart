import 'package:flutter/material.dart';
import 'package:news_app/news/data/model/news_model/news_model.dart';
import 'package:news_app/util/flutter_tost.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
       await  _urLuncher(newsModel.url!);

      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            ListTile(
              title: Text(
                newsModel.title.toString(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                newsModel.publishedAt.toString(),
                maxLines: 3,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.grey),
              ),
            ),
            const Divider(
              indent: 20,
              thickness: .5,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );

  }


  Future<void> _urLuncher(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } on Exception catch (e) {
      flutterTost(e.toString());
    }
  }
}
