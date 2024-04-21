import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
          context: context,
          title: ("Resume Builder"),
          child: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              "RESUMES",
              style: Textstyling.subtitle,
            ),
          )),
      backgroundColor: primarylightgreencolor,
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 8,
                    intensity: 0.7,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(20),
                    ),
                    border: NeumorphicBorder(
                      color: Color(0xffD4E7C5),
                      width: 6,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("workspace");
                    },
                    child: Container(
                        height: 220,
                        width: 170,
                        color: Color(0xffBFD8AF).withOpacity(0.9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.add,
                              size: 60,
                              color: primaryblackcolor,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 5),
                              child: Text(
                                "Create New Resume",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: primaryblackcolor),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Row(
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        depth: 8,
                        intensity: 0.7,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                        border: NeumorphicBorder(
                          color: Color(0xffD4E7C5),
                          width: 6,
                        ),
                      ),
                      child: Container(
                          height: 220,
                          width: 170,
                          color: Color(0xffBFD8AF).withOpacity(0.9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.person,
                                size: 60,
                                color: primaryblackcolor,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  "View All Resume",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: primaryblackcolor),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
