import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/allproductdata.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class technicalskillinfopage extends StatefulWidget {
  const technicalskillinfopage({super.key});

  @override
  State<technicalskillinfopage> createState() => _technicalskillinfopageState();
}

class _technicalskillinfopageState extends State<technicalskillinfopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, bottom: 35),
              child: Text(
                "Technical Skills",
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Neumorphic(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  color: primarydarkgreen,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Enter Your Skills",
                          style: Textstyling.subtitle,
                        ),
                      ),
                      ...Productdata.allskill.map(
                        (e) => Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: TextField(
                                  onChanged: (val) {},
                                  controller: e,
                                  decoration: const InputDecoration(
                                    hintText: "C Languages, Web Technical",
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  Productdata.allskill.remove(e);
                                });
                              },
                              icon: const Icon(
                                Icons.delete_outline,
                                size: 33,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 13.5, top: 30),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 12,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          Productdata.allskill
                                              .add(TextEditingController());
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              primarylightgreencolor),
                                      child: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: primaryblackcolor,
                                      ), // Add text to the button
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Productdata.allskill.forEach((element) {
                      element.clear();
                    });
                    setState(() {
                      Productdata.allskill = [
                        TextEditingController(),
                        TextEditingController(),
                      ];
                    });
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
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.grey,
                        action: SnackBarAction(
                          label: "Next",
                          onPressed: () {
                            Productdata.allskill.forEach((element) {
                              element.clear();
                            });
                            Navigator.of(context).pushNamed("workspace");
                            setState(() {
                              Productdata.allskill = [
                                TextEditingController(),
                                TextEditingController()
                              ];
                            });
                          },
                          textColor: primaryblackcolor,
                        ),
                        content: const Text("Saved successfully"),
                      ),
                    );
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
