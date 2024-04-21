import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class declarationinfopage extends StatefulWidget {
  const declarationinfopage({super.key});

  @override
  State<declarationinfopage> createState() => _declarationinfopageState();
}

class _declarationinfopageState extends State<declarationinfopage> {
  GlobalKey<FormState> discriptionInfoKey = GlobalKey<FormState>();
  TextEditingController discriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  bool switch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "",
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70, bottom: 35),
              child: Text(
                "Declaration",
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
            (switch1)
                ? Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: 510,
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
                          child: Form(
                            key: discriptionInfoKey,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 20),
                                      child: Text(
                                        "Declaration",
                                        style: Textstyling.subtitle,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        switch1 = !switch1;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 20),
                                        child: Switch(
                                          value: switch1,
                                          onChanged: (val) {
                                            setState(() {
                                              switch1 = val;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 25),
                                      child: Icon(
                                        Icons.bookmarks_outlined,
                                        size: 32,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 45, right: 20),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter first discription";
                                      }
                                      return null;
                                    },
                                    controller: discriptionController,
                                    decoration: const InputDecoration(
                                      hintText: "Description",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: primaryblackcolor,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 20),
                                          child: Text(
                                            "Date",
                                            style: Textstyling.subtitle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 53),
                                          child: SizedBox(
                                            height: 80,
                                            width: 150,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter first date";
                                                }
                                                return null;
                                              },
                                              controller: dateController,
                                              decoration: const InputDecoration(
                                                hintText: "DD/MM/YYYY",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: Text(
                                                "Place(Interview \nvenue/city)",
                                                style: Textstyling.subtitle,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: SizedBox(
                                                height: 80,
                                                width: 150,
                                                child: TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter first place";
                                                    }
                                                    return null;
                                                  },
                                                  controller: placeController,
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: "Eg. Surat",
                                                    border:
                                                        OutlineInputBorder(),
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16),
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
                        height: 600,
                        color: primarydarkgreen,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Declaration",
                                style: Textstyling.subtitle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                switch1 = !switch1;
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 20),
                                child: Switch(
                                  value: switch1,
                                  onChanged: (val) {
                                    setState(() {
                                      switch1 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    discriptionController.clear();
                    dateController.clear();
                    placeController.clear();
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
                    if (discriptionInfoKey.currentState!.validate()) {
                      discriptionInfoKey.currentState!.save();
                      discriptionInfoKey.currentState!.reset();
                      discriptionController.clear();
                      dateController.clear();
                      placeController.clear();
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
