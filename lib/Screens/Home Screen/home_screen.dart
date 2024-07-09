import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Components/custom_app_bar.dart';
import 'Components/custom_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(height, width),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "LEVEL 14",
                style: GoogleFonts.montserrat(
                  // color: Color(0xFF201F1D),
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: height / 25,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 16,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DragTarget(
                      onAcceptWithDetails: (details) {
                        if (details.data == index % 4) {
                          setState(() {
                            String text = "${index + 1}";
                            tetx.add(text);
                          });
                          color[index] = Colors.green;
                        }
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        alignment: Alignment.center,
                        height: height / 11,
                        width: height / 11,
                        decoration: BoxDecoration(
                          color: color[index],
                          border: Border.all(color: Colors.black, width: 1.7),
                        ),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 4,
                width: width / 1.5,
                // color: Colors.grey,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 30,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Draggable(
                    data: index,
                    feedback: Material(
                      child: Container(
                        alignment: Alignment.center,
                        height: height / 11,
                        width: height / 11,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black, width: 1.7),
                        ),
                        child: Text(
                          "${index + 1}".toString(),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: height / 10,
                        width: height / 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black, width: 1.7),
                        ),
                        child: Text(
                          "${index + 1}".toString(),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: customBottomNavBar(),
    );
  }
}

List<String> tetx = [];
List<Color> color = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
];
