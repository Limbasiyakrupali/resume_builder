import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Referaceinfopage extends StatefulWidget {
  const Referaceinfopage({super.key});

  @override
  State<Referaceinfopage> createState() => _ReferaceinfopageState();
}

class _ReferaceinfopageState extends State<Referaceinfopage> {
  GlobalKey<FormState> referancenInfoKey = GlobalKey<FormState>();
  TextEditingController refrancenameController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController organizeController = TextEditingController();
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
                "Referance",
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
                  height: 480,
                  margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Neumorphic(
                    child: Container(
                      alignment: Alignment.topLeft,
                      color: primarydarkgreen,
                      child: Form(
                        key: referancenInfoKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "Referance Name",
                                style: Textstyling.labal,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter first name";
                                  }
                                  return null;
                                },
                                controller: refrancenameController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Name",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "Designation",
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
                                    return "Enter first designation";
                                  }
                                  return null;
                                },
                                controller: designationController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Designation",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "Orgainaization/Institutes",
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
                                    return "Enter first institute name";
                                  }
                                  return null;
                                },
                                controller: organizeController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Orgainaization/Institutes",
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
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    refrancenameController.clear();
                    designationController.clear();
                    organizeController.clear();
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
                    if (referancenInfoKey.currentState!.validate()) {
                      referancenInfoKey.currentState!.save();
                      referancenInfoKey.currentState!.reset();
                      refrancenameController.clear();
                      designationController.clear();
                      organizeController.clear();
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
    );
  }
}
