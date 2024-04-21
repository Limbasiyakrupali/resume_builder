import 'dart:io';

class Resume {
  String name = "";
  String email = "";
  String contact = "";
  String address = "";
  File? profileImageFile;
  String companyname = "";
  String quality = "";
  String roles = "";
  String careerobjective = "";
  String designation = "";
  String dob = "";
  String nationality = "";
  String course = "";
  String collagename = "";
  String institutename = "";
  String year = "";
  String projecttitle = "";
  String projectrole = "";
  String languages = "";
  String technology = "";
  String projectdiscription = "";
  String referancename = "";
  String referancedesignation = "";
  String orgainization = "";
  String declarariondiscription = "";
  String date = "";
  String place = "";

  Resume(
      {required this.name,
      required this.email,
      required this.contact,
      required this.address,
      required this.profileImageFile,
      required this.companyname,
      required this.quality,
      required this.roles,
      required this.careerobjective,
      required this.designation,
      required this.dob,
      required this.nationality,
      required this.course,
      required this.collagename,
      required this.institutename,
      required this.year,
      required this.projecttitle,
      required this.projectrole,
      required this.languages,
      required this.technology,
      required this.projectdiscription,
      required this.referancename,
      required this.referancedesignation,
      required this.orgainization,
      required this.declarariondiscription,
      required this.date,
      required this.place});
}
