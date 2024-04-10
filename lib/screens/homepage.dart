import 'package:flutter/material.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';

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
        title: "Resume Builder",
        subtitle: "RESUMES",
      ),
      body: Center(
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                  "https://img.freepik.com/free-vector/employees-cv-candidates-resume-corporate-workers-students-id-isolate-flat-design-element-job-applications-avatars-personal-information_335657-145.jpg",
                ))),
              ),
              Stack(children: [
                Container(
                  height: 442,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primarypichcolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 15),
                  height: 250,
                  width: 178,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/premium-vector/letter-quill-pen-icon-black-white_755164-15398.jpg"),
                        fit: BoxFit.cover),
                    color: primarypichcolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.symmetric(
                        vertical: BorderSide(color: Colors.white, width: 4)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(offset: Offset(3, -5), color: Colors.white),
                    ],
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 90,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.white.withOpacity(0.3))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Create New",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: primaryblackcolor,
                                ),
                              ),
                              Text(
                                "Resume",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: primaryblackcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 215),
                  height: 250,
                  width: 178,
                  decoration: BoxDecoration(
                    color: primarypichcolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.symmetric(
                        vertical: BorderSide(color: Colors.white, width: 4)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(offset: Offset(3, -5), color: Colors.white),
                    ],
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 90,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.white.withOpacity(0.3))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "View Created",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: primaryblackcolor,
                                ),
                              ),
                              Text(
                                "Resume",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: primaryblackcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 340),
                    height: 60,
                    width: 170,
                    decoration: BoxDecoration(
                      color: primarypichcolor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.white, width: 4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 5),
                            color: Colors.white.withOpacity(0.3))
                      ],
                    ),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('Workspace');
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: primaryblackcolor,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
