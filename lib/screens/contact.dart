import 'dart:io';

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart'; // for XFile
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/allproductdata.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  ImagePicker imagePicker = ImagePicker();
  XFile? xFile;
  String? pickImagePath;
  bool isContact = true;
  GlobalKey<FormState> contactInfoKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
        context: context,
        title: "Resumes Workspace",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isContact = true;
                });
              },
              child: Container(
                //     width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white.withOpacity((isContact) ? 0.75 : 0),
                      width: 3,
                    ),
                  ),
                ),
                child: Text(
                  "Contact",
                  style: Textstyling.subtitle,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isContact = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white.withOpacity((isContact) ? 0 : 0.75),
                      width: 3,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    "Photo",
                    style: Textstyling.subtitle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: primarylightgreencolor,
      body: (isContact)
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 20),
                    height: 510,
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
                        child: Form(
                          key: contactInfoKey,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(6),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: TextFormField(
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter contact first";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Productdata.name = val ?? "";
                                          },
                                          controller: nameController,
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.person_2_outlined,
                                              size: 28,
                                              color: Colors.grey,
                                            ),
                                            border: OutlineInputBorder(),
                                            hintText: "Name",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter email first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Productdata.email = val ?? "";
                                        },
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            size: 28,
                                            color: Colors.grey,
                                          ),
                                          border: OutlineInputBorder(),
                                          hintText: "Email",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter contact first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Productdata.contact = val ?? "";
                                        },
                                        controller: contactController,
                                        keyboardType: TextInputType.phone,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.phone,
                                            size: 28,
                                            color: Colors.grey,
                                          ),
                                          border: OutlineInputBorder(),
                                          hintText: "Contact",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter address first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Productdata.address = val ?? "";
                                        },
                                        controller: addressController,
                                        maxLines: 3,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 45),
                                            child: Icon(
                                              Icons.location_on,
                                              size: 28,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          border: OutlineInputBorder(),
                                          hintText: "Address",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                          nameController.clear();
                          emailController.clear();
                          contactController.clear();
                          addressController.clear();
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
                          if (contactInfoKey.currentState!.validate()) {
                            contactInfoKey.currentState!.save();
                            contactInfoKey.currentState!.reset();
                            nameController.clear();
                            emailController.clear();
                            contactController.clear();
                            addressController.clear();

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
            )
          : Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 230,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Pick Image"),
                              content: const Text(
                                "Choose Image From Gallery or Camera",
                              ),
                              actions: [
                                FloatingActionButton(
                                  onPressed: () async {
                                    xFile = await imagePicker.pickImage(
                                        source: ImageSource.camera);
                                    setState(() {
                                      if (xFile != null) {
                                        pickImagePath = xFile!.path;
                                      }
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.camera,
                                  ),
                                ),
                                FloatingActionButton(
                                    onPressed: () async {
                                      xFile = await imagePicker.pickImage(
                                          source: ImageSource.gallery);
                                      setState(() {
                                        if (xFile != null) {
                                          pickImagePath = xFile!.path;
                                        }
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    child: const Icon(
                                      Icons.image,
                                    ))
                              ],
                            );
                          });
                    },
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: primarydarkgreen,
                      backgroundImage: (pickImagePath != null)
                          ? FileImage(File(pickImagePath!))
                          : null,
                      child: (pickImagePath != null)
                          ? Container()
                          : Icon(
                              Icons.add,
                              size: 35,
                              color: primaryblackcolor,
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
                          if (pickImagePath == null) {
                            Container();
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          foregroundColor: primaryblackcolor,
                        ),
                        child: Text("Clear")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.grey,
                                action: SnackBarAction(
                                  label: "Next",
                                  onPressed: () {
                                    setState(() {
                                      if (pickImagePath != null) {
                                        Productdata.profileImageFile =
                                            File(pickImagePath!);
                                      }
                                      Navigator.of(context).pop();
                                    });
                                  },
                                  textColor: primaryblackcolor,
                                ),
                                content: const Text("Saved successfully"),
                              ),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          backgroundColor: primarydarkgreen,
                          foregroundColor: primaryblackcolor,
                        ),
                        child: const Text("Save"))
                  ],
                )
              ],
            ),
    );
  }
}
