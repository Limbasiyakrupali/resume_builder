import 'dart:io';

import 'package:flutter/material.dart';

class Productdata {
  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      "catagoryname": [
        {
          "title": "Contact Info",
          "Navigator": "contact_info",
          "Icon": Icons.co_present_outlined,
          "thumbnail":
              "https://media.istockphoto.com/id/958737706/vector/student-id-card-icon-vector-female-user-person-profile-avatar-symbol-for-education-data.jpg?s=612x612&w=is&k=20&c=96xEnQ9Jm7Y_-w2fPp8JIgJW_UjruoX-cO52Osvw8Vs=",
        },
        {
          "title": "Carrier Objective",
          "Navigator": "Carrier_Objective",
          "Icon": Icons.cases_outlined,
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaDiUJFkUeB8AWQ8iiOL4GiAYjd7Q0k2-RgDCmmZ2z7A&s",
        },
      ],
    },
    {
      "catagoryname": [
        {
          "title": "Personal Details",
          "Navigator": "Personal_Details",
          "Icon": Icons.person_2_outlined,
          "thumbnail":
              "https://cdn1.vectorstock.com/i/1000x1000/94/20/secured-personal-information-icon-simple-style-vector-37429420.jpg",
        },
        {
          "title": "Education",
          "Navigator": "education",
          "Icon": Icons.cast_for_education_sharp,
          "thumbnail":
              "https://as1.ftcdn.net/v2/jpg/01/26/53/38/1000_F_126533828_NqkpsJ87SkBudJHK0tltAqxlVVD05LCJ.jpg",
        },
      ]
    },
    {
      "catagoryname": [
        {
          "title": "Experiences",
          "Navigator": "experiences",
          "Icon": Icons.three_p_outlined,
          "thumbnail":
              "https://t3.ftcdn.net/jpg/02/16/93/52/360_F_216935242_xPZvhWRA3hsdSsRzSbWKsgu7UZyId3WQ.jpg",
        },
        {
          "title": "Technical skills",
          "Navigator": "Technical_skills",
          "Icon": Icons.military_tech_outlined,
          "thumbnail":
              "https://images.creativemarket.com/0.1.0/ps/6262012/1820/1213/m1/fpnw/wm1/wey95aprqrdbftdoxywyzzefto6jlta0sjfcmaqdyj1qz2it1khkhu6ndxhtpe0d-.jpg?1555492057&s=fb4b9d17f14260e6f52c2fbf7732833a",
        },
      ]
    },
    {
      "catagoryname": [
        {
          "title": "Intrest/Hobbies",
          "Navigator": "intrest/hobbies",
          "Icon": Icons.interests_outlined,
          "thumbnail":
              "https://thumbs.dreamstime.com/b/icon-interest-hobby-interest-149135099.jpg",
        },
        {
          "title": "Projects",
          "Navigator": "projects",
          "Icon": Icons.book_outlined,
          "thumbnail":
              "https://thumbs.dreamstime.com/b/project-management-icon-to-do-list-symbol-white-background-checklist-cog-flat-style-simple-abstract-plan-black-vector-158948149.jpg",
        },
      ]
    },
    {
      "catagoryname": [
        {
          "title": "Achievements",
          "Navigator": "achievements",
          "Icon": Icons.golf_course_outlined,
          "thumbnail":
              "https://t3.ftcdn.net/jpg/06/25/85/32/360_F_625853203_8PPpcyMxeIrO0bNN5oarbtNEnLOtWPLl.jpg",
        },
        {
          "title": "Referances",
          "Navigator": "referances",
          "Icon": Icons.handshake_outlined,
          "thumbnail":
              "https://t4.ftcdn.net/jpg/03/76/22/13/360_F_376221393_BCtZD6rjPuXpPZiMPv2ybJyfyjje0Xv2.jpg",
        },
      ]
    },
    {
      "catagoryname": [
        {
          "title": "Declaration",
          "Navigator": "declaration",
          "Icon": Icons.book_online_outlined,
          "thumbnail":
              "https://media.istockphoto.com/id/951153858/vector/sign-up-icon-vector-simple-flat-symbol-perfect-black-pictogram-illustration-on-white.jpg?s=612x612&w=0&k=20&c=AtL4RZ8CQaYKWJ_91kd8d-rNI-w_rsnHvZjqkCHp3-s=",
        },
      ]
    },
  ];
  static List<TextEditingController> allskill = [
    TextEditingController(),
    TextEditingController(),
  ];
  static String name = "";
  static String email = "";
  static String contact = "";
  static String address = "";
  static File? profileImageFile;
  static String companyname = "";
  static String quality = "";
  static String roles = "";
  static String careerobjective = "";
  static String designation = "";
  static String dob = "";
  static String nationality = "";
  static String course = "";
  static String collagename = "";
  static String institutename = "";
  static String year = "";
  static String projecttitle = "";
  static String projectrole = "";
  static String languages = "";
  static String technology = "";
  static String projectdiscription = "";
  static String referancename = "";
  static String referancedesignation = "";
  static String orgainization = "";
  static String declarariondiscription = "";
  static String date = "";
  static String place = "";
}
