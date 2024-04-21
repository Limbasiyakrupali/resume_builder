import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Educationinfopage extends StatefulWidget {
  const Educationinfopage({super.key});

  @override
  State<Educationinfopage> createState() => _EducationinfopageState();
}

class _EducationinfopageState extends State<Educationinfopage> {
  GlobalKey<FormState> educationInfoKey = GlobalKey<FormState>();
  TextEditingController courseController = TextEditingController();
  TextEditingController institueController = TextEditingController();
  TextEditingController collageController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80, bottom: 34),
              child: Text(
                "Education",
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
            Column(
              children: [
                Container(
                  height: 650,
                  margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: primarydarkgreen,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 8,
                      intensity: 0.7,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(20),
                      ),
                      border: NeumorphicBorder(
                        color: primarylightgreencolor,
                        width: 6,
                      ),
                    ),
                    child: Container(
                      color: primarydarkgreen,
                      alignment: Alignment.topLeft,
                      child: Form(
                        key: educationInfoKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "Course/Degree",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your course";
                                  }
                                  return null;
                                },
                                controller: courseController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "B.Tech Information Technology",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "School/Collage/Institutes",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter first collage name";
                                  }
                                  return null;
                                },
                                controller: collageController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Bhagavan Mahavir Univercity",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "School/Collage/Institutes",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter first institute name";
                                  }
                                  return null;
                                },
                                controller: institueController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "70% (or) 7.0 CGPA",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "Year Of Pass",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter first year";
                                  }
                                  return null;
                                },
                                controller: yearController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "2019",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: OutlinedButton(
                    onPressed: () {
                      courseController.clear();
                      collageController.clear();
                      institueController.clear();
                      yearController.clear();
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      foregroundColor: primaryblackcolor,
                    ),
                    child: const Text("Clear"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: ElevatedButton(
                    onPressed: () {
                      if (educationInfoKey.currentState!.validate()) {
                        educationInfoKey.currentState!.save();
                        educationInfoKey.currentState!.reset();
                        courseController.clear();
                        collageController.clear();
                        institueController.clear();
                        yearController.clear();

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
