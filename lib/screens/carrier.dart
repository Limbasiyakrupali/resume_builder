import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Carrierinfopage extends StatefulWidget {
  const Carrierinfopage({super.key});

  @override
  State<Carrierinfopage> createState() => _CarrierinfopageState();
}

class _CarrierinfopageState extends State<Carrierinfopage> {
  GlobalKey<FormState> careerInfoKey = GlobalKey<FormState>();
  TextEditingController careerController = TextEditingController();
  TextEditingController designationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                "Career Objective",
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
            Form(
              key: careerInfoKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 20),
                    height: 260,
                    color: primarydarkgreen,
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
                        alignment: Alignment.topLeft,
                        color: primarydarkgreen,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Career Objective",
                                style: Textstyling.labal,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 10),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Discription first";
                                  }
                                  return null;
                                },
                                controller: careerController,
                                maxLines: 5,
                                decoration: InputDecoration(
                                    hintText: "Discription",
                                    border: OutlineInputBorder()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 20),
                    height: 200,
                    color: primarydarkgreen,
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
                        alignment: Alignment.topLeft,
                        color: primarydarkgreen,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Current Designation(Experiance Candidate)",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 10),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Designation first";
                                  }
                                  return null;
                                },
                                controller: designationController,
                                decoration: InputDecoration(
                                    hintText: "Software Engineer",
                                    border: OutlineInputBorder()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          careerController.clear();
                          designationController.clear();
                        },
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          foregroundColor: primaryblackcolor,
                        ),
                        child: Text("Clear"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (careerInfoKey.currentState!.validate()) {
                            careerInfoKey.currentState!.save();
                            careerInfoKey.currentState!.reset();
                            careerController.clear();
                            designationController.clear();
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
                                content: Text("Saved successfully"),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          backgroundColor: primarydarkgreen,
                          foregroundColor: primaryblackcolor,
                        ),
                        child: Text("Save"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
