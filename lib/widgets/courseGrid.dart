import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Data.dart';
import '../Screens/ClassChatScreen.dart';

class CourseGrid extends StatelessWidget {
  const CourseGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: course.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ClassChatScreen(
                            teacherName: course[index].teacher!,
                            courseName: course[index].text,
                          )));
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(course[index].backImage),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          course[index].text,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          course[index].teacher!,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          course[index].lessons,
                          style: const TextStyle(color: Colors.white),
                        ),
                        CircularPercentIndicator(
                          radius: 25,
                          lineWidth: 5,
                          animation: true,
                          animationDuration: 1500,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: course[index].percent / 100,
                          progressColor: Colors.white,
                          center: Text(
                            "${course[index].percent}%",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          course[index].imageUrl,
                          height: 110,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
