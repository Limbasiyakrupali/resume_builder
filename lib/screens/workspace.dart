import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/allproductdata.dart';
import 'package:resume_builder/utils/custom_widget.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customwidget.getAppBar(
          context: context,
          title: ("Resume Workspace"),
          child: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              "Build Options",
              style: Textstyling.subtitle,
            ),
          )),
      backgroundColor: primarylightgreencolor,
      body: Expanded(
        flex: 10,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ...Productdata.allProductData.map(
                          (val) => Row(
                            children: [
                              ...val['catagoryname'].map(
                                (Map<String, dynamic> e) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.of(context).pushNamed(
                                          "${e['Navigator']}",
                                          arguments: e);
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      right: 12,
                                      left: 12,
                                      top: 20,
                                    ),
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
                                          height: 160,
                                          width: 170,
                                          color: Color(0xffBFD8AF)
                                              .withOpacity(0.9),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                e['Icon'],
                                                size: 50,
                                                color: primaryblackcolor,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Text(
                                                  "${e['title']}",
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: primaryblackcolor),
                                                ),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
