import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Practice15 extends StatelessWidget {
  const Practice15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      onDone: () {
        // When done button is press
      },
      onSkip: () {
        // You can also override onSkip callback
      },
      showSkipButton: true,
      skip: const Icon(Icons.skip_next),
      next: const Icon(Icons.nat),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}

final listPagesViewModel = [
  PageViewModel(
    title: "1",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.network(
          "https://grapee.jp/wp-content/uploads/66372_main2.jpg",
          height: 175.0),
    ),
  ),
  PageViewModel(
    title: "2",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.network("https://pbs.twimg.com/media/EfOaeUhU0AI7M3K.jpg",
          height: 175.0),
    ),
  )
];
