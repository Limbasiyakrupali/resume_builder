import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/allproductdata.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Experianceinfopage extends StatefulWidget {
  const Experianceinfopage({super.key});

  @override
  State<Experianceinfopage> createState() => _ExperianceinfopageState();
}

class _ExperianceinfopageState extends State<Experianceinfopage> {
  GlobalKey<FormState> experianceInfoKey = GlobalKey<FormState>();
  TextEditingController companynameController = TextEditingController();
  TextEditingController QualityController = TextEditingController();
  TextEditingController RollController = TextEditingController();
  TextEditingController datejoinController = TextEditingController();
  String radiostatus = "";
  String employedStatus = "";
  String CurrentlyEmployed = "Currently Employed";

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
                "Experiences",
                style: Textstyling.title,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: primarylightgreencolor,
      body: SingleChildScrollView(
        key: experianceInfoKey,
        child: Column(
          children: [
            Form(
              key: experianceInfoKey,
              child: Column(
                children: [
                  Container(
                    height: 730,
                    margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                    decoration: BoxDecoration(
                        color: primarydarkgreen,
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
                                "Company Name",
                                style: Textstyling.labal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter company name first";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Productdata.companyname = val ?? "";
                                },
                                controller: companynameController,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "New Enterprice,San Francisco"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                "School/Collage/Institute",
                                style: Textstyling.labal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter the Quality first";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Productdata.quality = val ?? "";
                                },
                                controller: QualityController,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Quality Test Engineer"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
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
                                    return "Enter the roles first";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Productdata.roles = val ?? "";
                                },
                                controller: RollController,
                                maxLines: 3,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText:
                                        "Working with team members to come up with new concepts and product analysis..."),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 20,
                              ),
                              child: Text(
                                "Employed Status",
                                style: Textstyling.labal,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: "Previously Employed",
                                        groupValue: employedStatus,
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              employedStatus = val!;
                                            },
                                          );
                                        },
                                      ),
                                      Text("Previously Employed",
                                          style: Textstyling.textform),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: "Currently Employed",
                                      groupValue: employedStatus,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            employedStatus = val!;
                                          },
                                        );
                                      },
                                    ),
                                    Text(
                                      "Currently Employed",
                                      style: Textstyling.textform,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              color: primaryblackcolor,
                            ),
                            (employedStatus != CurrentlyEmployed)
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Date Joined",
                                                  style: Textstyling.labal,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              left: 20,
                                              top: 5,
                                            ),
                                            child: SizedBox(
                                              height: 50,
                                              width: 128,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "DD/MM/YYYY",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 10, right: 20),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Date Exit",
                                                  style: Textstyling.labal,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 5, right: 20),
                                            child: SizedBox(
                                              height: 50,
                                              width: 128,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "DD/MM/YYYY",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Date Joined",
                                                  style: Textstyling.labal,
                                                ),

                                                //Text("data"),
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 5),
                                            child: SizedBox(
                                              height: 50,
                                              width: 128,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "DD/MM/YYYY",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: OutlinedButton(
                    onPressed: () {
                      companynameController.clear();
                      QualityController.clear();
                      RollController.clear();
                      datejoinController.clear();
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
                      if (experianceInfoKey.currentState!.validate()) {
                        experianceInfoKey.currentState!.save();
                        experianceInfoKey.currentState!.reset();
                        companynameController.clear();
                        QualityController.clear();
                        RollController.clear();
                        datejoinController.clear();

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
