import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class projectinfopage extends StatefulWidget {
  const projectinfopage({super.key});

  @override
  State<projectinfopage> createState() => _projectinfopageState();
}

class _projectinfopageState extends State<projectinfopage> {
  GlobalKey<FormState> projectInfoKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController technologyController = TextEditingController();
  TextEditingController disController = TextEditingController();
  bool clanguage = false;
  bool oop = false;
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, bottom: 35),
              child: Text(
                "Projects",
                style: Textstyling.title,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: primarylightgreencolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 20),
              height: 820,
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  depth: 8,
                  intensity: 0.7,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(20),
                  ),
                  border: const NeumorphicBorder(
                    color: Color(0xffD4E7C5),
                    width: 6,
                  ),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  color: primarydarkgreen,
                  child: Form(
                    key: projectInfoKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Project Title",
                            style: Textstyling.labal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter first title";
                              }
                              return null;
                            },
                            controller: titleController,
                            decoration: const InputDecoration(
                                hintText: "Resume Builder App",
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Technologies",
                            style: Textstyling.labal,
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: clanguage,
                                onChanged: (val) {
                                  setState(() {
                                    clanguage = val!;
                                  });
                                }),
                            Text(
                              "C Language",
                              style: Textstyling.smalllabal,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: oop,
                                onChanged: (val) {
                                  setState(() {
                                    oop = val!;
                                  });
                                }),
                            Text(
                              "C++",
                              style: Textstyling.smalllabal,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: flutter,
                                onChanged: (val) {
                                  setState(() {
                                    flutter = val!;
                                  });
                                }),
                            Text(
                              "Flutter",
                              style: Textstyling.smalllabal,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Roles",
                            style: Textstyling.labal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter first roles";
                              }
                              return null;
                            },
                            controller: rolesController,
                            decoration: const InputDecoration(
                              hintText: "Organize team members, code analysis",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Technologies",
                            style: Textstyling.labal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter first technology";
                              }
                              return null;
                            },
                            controller: technologyController,
                            decoration: const InputDecoration(
                              hintText: "5 - Programmers",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Project Description",
                            style: Textstyling.labal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter first discription";
                              }
                              return null;
                            },
                            controller: disController,
                            decoration: const InputDecoration(
                              hintText: "Enter your Project Description",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: OutlinedButton(
                    onPressed: () {
                      titleController.clear();
                      rolesController.clear();
                      technologyController.clear();
                      disController.clear();
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      foregroundColor: primaryblackcolor,
                    ),
                    child: Text("Clear"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: ElevatedButton(
                    onPressed: () {
                      if (projectInfoKey.currentState!.validate()) {
                        projectInfoKey.currentState!.save();
                        projectInfoKey.currentState!.reset();
                        titleController.clear();
                        technologyController.clear();
                        rolesController.clear();
                        disController.clear();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.grey,
                            action: SnackBarAction(
                              label: "Next",
                              onPressed: () {
                                setState(() {});
                              },
                              textColor: primaryblackcolor,
                            ),
                            content: const Text("Saved successfully"),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      backgroundColor: primarydarkgreen,
                      foregroundColor: primaryblackcolor,
                    ),
                    child: const Text("Save"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
