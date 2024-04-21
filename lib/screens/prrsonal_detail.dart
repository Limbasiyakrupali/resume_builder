import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class personaldetailpage extends StatefulWidget {
  const personaldetailpage({super.key});

  @override
  State<personaldetailpage> createState() => _personaldetailpageState();
}

class _personaldetailpageState extends State<personaldetailpage> {
  String radiostatus = "";
  bool English = false;
  bool Hindi = false;
  bool Gujarati = false;
  GlobalKey<FormState> personaldetailInfoKey = GlobalKey<FormState>();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 52, bottom: 35),
              child: Text(
                "personal details",
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
              key: personaldetailInfoKey,
              child: Column(
                children: [
                  Container(
                    height: 680,
                    margin: const EdgeInsets.only(
                      top: 16,
                      right: 16,
                      left: 16,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Neumorphic(
                      child: Container(
                        alignment: Alignment.topLeft,
                        color: primarydarkgreen,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "DOB",
                                style: Textstyling.labal,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter first DOB";
                                  }
                                  return null;
                                },
                                controller: dobcontroller,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Text(
                                "Marital Status",
                                style: Textstyling.labal,
                              ),
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: "Male",
                                    groupValue: radiostatus,
                                    onChanged: (val) {
                                      setState(() {
                                        radiostatus = val!;
                                      });
                                    }),
                                Text(
                                  "Male",
                                  style: Textstyling.smalllabal,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: "Female",
                                    groupValue: radiostatus,
                                    onChanged: (val) {
                                      setState(() {
                                        radiostatus = val!;
                                      });
                                    }),
                                Text(
                                  "Female",
                                  style: Textstyling.smalllabal,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Text("Languages Known",
                                  style: Textstyling.labal),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: English,
                                    onChanged: (val) {
                                      setState(() {
                                        English = val!;
                                      });
                                    }),
                                Text(
                                  "English",
                                  style: Textstyling.smalllabal,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: Hindi,
                                    onChanged: (val) {
                                      setState(() {
                                        Hindi = val!;
                                      });
                                    }),
                                Text(
                                  "Hindi",
                                  style: Textstyling.smalllabal,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: Gujarati,
                                    onChanged: (val) {
                                      setState(() {
                                        Gujarati = val!;
                                      });
                                    }),
                                Text(
                                  "Gujarati",
                                  style: Textstyling.smalllabal,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Text(
                                "Nationality",
                                style: Textstyling.labal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter nationality first";
                                  }
                                  return null;
                                },
                                controller: nationalityController,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Indian"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: OutlinedButton(
                          onPressed: () {
                            dobcontroller.clear();
                            nationalityController.clear();
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
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            if (personaldetailInfoKey.currentState!
                                .validate()) {
                              personaldetailInfoKey.currentState!.save();
                              personaldetailInfoKey.currentState!.reset();
                              dobcontroller.clear();
                              nationalityController.clear();
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
          ],
        ),
      ),
    );
  }
}
