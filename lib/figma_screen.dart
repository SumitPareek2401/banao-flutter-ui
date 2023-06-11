import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DummyData {
  final String heading;
  final String image;
  final String text;
  final String lessons;
  final String type;

  DummyData({
    required this.heading,
    required this.image,
    required this.text,
    required this.lessons,
    required this.type,
  });
}

// void main() {
//   runApp(MyApp());
// }

class FigmaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScrollingScreen(),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  final List<DummyData> column1Data = [
    DummyData(
      heading: 'Column 1 - Heading 1',
      image: 'assets/images/lesson.png',
      text: 'A complete Guide for Video Editing',
      lessons: '16 lessons',
      type: 'Video Editing',
    ),
    DummyData(
      heading: 'Column 1 - Heading 2',
      image: 'assets/images/lesson4.jpeg',
      text: 'A complete Guide for Video Editing',
      lessons: '8 lessons',
      type: 'Film Making',
    ),
  ];

  final List<DummyData> column2Data = [
    DummyData(
      heading: 'Column 2 - Heading 1',
      image: 'assets/images/lesson2.jpeg',
      text: 'A complete Guide for Learning',
      lessons: '13 Feb, Sunday',
      type: 'Learning',
    ),
    DummyData(
      heading: 'Column 2 - Heading 2',
      image: 'assets/images/lesson3.jpeg',
      text: 'A complete Guide for designing',
      lessons: '20 Feb, Wednesday',
      type: 'Designing',
    ),
  ];
  final List<DummyData> column3Data = [
    DummyData(
      heading: 'Column 3 - Heading 3',
      image: 'assets/images/yoga.jpg',
      text: 'Understanding of Human Behavior',
      lessons: '3 min',
      type: 'Fit Body',
    ),
    DummyData(
      heading: 'Column 1 - Heading 2',
      image: 'assets/images/yoga.jpg',
      text: 'A complete Guide for Video Editing',
      lessons: '5 min',
      type: 'Healty body',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {
            // Implement drawer functionality
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.forum,
              size: 35,
              color: Colors.black54,
            ), //SvgPicture.asset('assets/icons/send-message.svg'),
            onPressed: () {
              // Implement chat functionality
            },
          ),
          const SizedBox(
            width: 9,
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
              size: 35,
            ), //SvgPicture.asset('assets/icons/alarm.svg'),
            onPressed: () {
              // Implement notification functionality
            },
          ),
          const SizedBox(
            width: 9,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 8,
              ),
              child: Text(
                'Hello, Sumit',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              child: Text(
                'What do you wanna learn today!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 9,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 75, 148, 237),
                        ),
                      ),
                      height: 60,
                      // width: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.book_outlined,
                            color: Color.fromARGB(255, 75, 148, 237),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Center(
                            child: Text(
                              'Programs',
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 148, 237),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 75, 148, 237),
                        ),
                      ),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.help,
                            color: Color.fromARGB(255, 75, 148, 237),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Center(
                            child: Text(
                              'Get help',
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 148, 237),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 75, 148, 237),
                        ),
                      ),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.menu_book,
                            color: Color.fromARGB(255, 75, 148, 237),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Center(
                            child: Text(
                              'Learn',
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 148, 237),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 75, 148, 237),
                        ),
                      ),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 75, 148, 237),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Center(
                            child: Text(
                              'DD Tracker',
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 148, 237),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Text(
                  //   'Columns',
                  //   style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  // ),
                  const SizedBox(height: 19),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Programs for you',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 85,
                          ),
                          const Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.arrow_right_alt,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 380,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: column1Data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 300,
                              height: 400,
                              margin: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 270,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            column1Data[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    column1Data[index].type,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 148, 237),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    column1Data[index].text,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  Text(
                                    column1Data[index].lessons,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Events and Experiences',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          const Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.arrow_right_alt,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 380,
                        // width: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: column2Data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 300,
                              height: 400,
                              margin: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 270,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            column2Data[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    column2Data[index].type,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 148, 237),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    column2Data[index].text,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    column2Data[index].lessons,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lessons for you',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 123,
                          ),
                          const Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.arrow_right_alt,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 380,
                        // width: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: column2Data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 300,
                              height: 400,
                              margin: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 270,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            column3Data[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    column3Data[index].type,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 148, 237),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    column3Data[index].text,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    column3Data[index].lessons,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Hub',
          ),
          // BottomNavigationBarItem(
          // icon: Icon(Icons.man),
          // label: 'Chat',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Profile',
          // ),
        ],
      ),
    );
  }
}
