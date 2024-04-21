import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:resume_builder/screens/Achievements.dart';
import 'package:resume_builder/screens/Declaration.dart';
import 'package:resume_builder/screens/Education.dart';
import 'package:resume_builder/screens/Hobbies.dart';
import 'package:resume_builder/screens/Projects.dart';
import 'package:resume_builder/screens/Referance.dart';
import 'package:resume_builder/screens/Technicalskills.dart';
import 'package:resume_builder/screens/carrier.dart';
import 'package:resume_builder/screens/contact.dart';
import 'package:resume_builder/screens/experiance.dart';
import 'package:resume_builder/screens/homepage.dart';
import 'package:resume_builder/screens/prrsonal_detail.dart';
import 'package:resume_builder/screens/workspace.dart';

void main() {
  runApp(NeumorphicApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Homepage(),
      'workspace': (context) => const Workspace(),
      'contact_info': (context) => const ContactInfo(),
      'Carrier_Objective': (context) => const Carrierinfopage(),
      'education': (context) => const Educationinfopage(),
      'referances': (context) => const Referaceinfopage(),
      'Personal_Details': (context) => const personaldetailpage(),
      'experiences': (context) => const Experianceinfopage(),
      'projects': (context) => const projectinfopage(),
      'declaration': (context) => const declarationinfopage(),
      'Technical_skills': (context) => const technicalskillinfopage(),
      'intrest/hobbies': (context) => const hobbiesinfopage(),
      'achievements': (context) => const achievementsinfopage(),
    },
  ));
}
