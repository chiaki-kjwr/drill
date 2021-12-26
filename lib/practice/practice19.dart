import 'package:flutter/material.dart';

class Practice19 extends StatelessWidget {
  const Practice19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'サービス内容',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Practice19List(),
                  )),
              child: lists.length > 5
                  ? Text(
                      'お知らせを全てみる',
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    )
                  : const SizedBox.shrink(),
            )
          ],
        ),
        Practice19Widget(),
      ],
    );
  }
}

class Practice19Widget extends StatelessWidget {
  const Practice19Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 200,
        child: lists.isEmpty
            ? Text('サービス内容がありません')
            : ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                      child: Column(
                    children: [
                      Image.network(
                        lists[index].image,
                        width: 200,
                        height: 100,
                      ),
                      Text(
                        'タイトル',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(lists[index].title),
                      Text('内容'),
                      Text(lists[index].content),
                    ],
                  ));
                }));
  }
}

class Practice19List extends StatelessWidget {
  const Practice19List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: lists
            .map((e) => Card(
                  child: Column(
                    children: [
                      Image.network(
                        e.image,
                        width: 200,
                        height: 100,
                      ),
                      Text(
                        'タイトル',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(e.title),
                      Text('内容'),
                      Text(e.content),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class ServiceDetail {
  const ServiceDetail({
    required this.image,
    required this.title,
    required this.content,
  });

  final String image;
  final String title;
  final String content;
}

final lists = [
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '1',
      content: 'サービス内容1'),
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '2',
      content: 'サービス内容2'),
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '3',
      content: 'サービス内容3'),
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '4',
      content: 'サービス内容4'),
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '5',
      content: 'サービス内容5'),
  ServiceDetail(
      image: 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
      title: '6',
      content: 'サービス内容6'),
];
