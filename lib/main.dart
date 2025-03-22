import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      body: Column(
        children: [
          MyAppBar(),
          SizedBox(
            height: 25,
          ),
          FilePart(),
          ManagerText(),
          SizedBox(
            height: 15,
          ),
          LetsText(),
          SizedBox(
            height: 10,
          ),
          ScrollHoriWidget(),
          SizedBox(
            height: 30,
          ),
          CategoryText(),
          SizedBox(
            height: 10,
          ),
          CategoryWidget(),
           SizedBox(
            height: 10,
          ),
          SecondCategoryText(),
        ],
      ),
    );
  }
}

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 130,
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Sabir Bugti",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        icon: const Icon(
          Icons.rocket_launch_rounded,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class SecondCategoryText extends StatelessWidget {
  const SecondCategoryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      width: 370,
      decoration: BoxDecoration(
          color: const Color(0xffcdcdcd),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: const Center(
              child: Icon(
                Icons.videocam,
                size: 35,
                color: Color(0xffff5a00),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vidoes",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff576280)),
              ),
              Text(
                "154 items",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      width: 370,
      decoration: BoxDecoration(
          color: const Color(0xffcdcdcd),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: const Center(
              child: Icon(
                Icons.music_note,
                size: 35,
                color: Color(0xffc4c3ff),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Music",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff576280)),
              ),
              Text(
                "223 items",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 220),
      child: const Text(
        "Categories",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ScrollHoriWidget extends StatelessWidget {
  const ScrollHoriWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Mycards(
            mycolor: const Color(0xff22293d),
            mycolor2: const Color(0xff434e6c),
            text1: const Text(
              "Large",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            text2: const Text(
              "92",
              style: TextStyle(
                color: Color(0xffcfff00),
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
            text3: const Text(
              "72.40 GB/ 128GB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Mycards(
            mycolor: const Color(0xff3787eb),
            mycolor2: const Color(0xff1b70da),
            text1: const Text(
              "Archive",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            text2: const Text(
              "13",
              style: TextStyle(
                color: Color(0xffcfff00),
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
            text3: const Text(
              "13.45 GB/ 128GB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Mycards(
            mycolor: const Color(0xffff5a00),
            mycolor2: const Color(0xffc84e0c),
            text1: const Text(
              "Favorite",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            text2: const Text(
              "32",
              style: TextStyle(
                color: Color(0xffcfff00),
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
            text3: const Text(
              "21.45 GB/ 128GB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LetsText extends StatelessWidget {
  const LetsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Lets clean and manage your file's",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class ManagerText extends StatelessWidget {
  const ManagerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Manager",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class FilePart extends StatelessWidget {
  const FilePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "File",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.tune_sharp,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class Mycards extends StatelessWidget {
  Color mycolor;
  Color mycolor2;
  Text text1;
  Text text2;
  Text text3;
  Mycards(
      {super.key,
      required this.mycolor,
      required this.mycolor2,
      required this.text1,
      required this.text2,
      required this.text3});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: mycolor, borderRadius: BorderRadius.circular(25)),
      width: 180,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Manager",
                style: TextStyle(
                  color: mycolor2,
                  fontSize: 15,
                ),
              ),
              const Icon(
                Icons.more_horiz,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              text1,
              text2,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Files",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Text(
                "items",
                style: TextStyle(
                  color: mycolor2,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          SizedBox(
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: mycolor2,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: text3,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            child: SliderButton(
              action: () async {
                return null;
              },
              label: const Text(
                ">>>",
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: const Color(0xff434e6c),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                height: double.infinity,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    "Clean",
                    style: TextStyle(
                      color: mycolor2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_left,
              size: 40,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
