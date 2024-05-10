// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/contact_model.dart';

List<ContactModel> contactItemList = [
  ContactModel(
    icon: Icons.email_rounded,
    text: "thengyuanyuan@gmail.com",
  ),
  ContactModel(
    icon: Icons.phone_rounded,
    text: "+60 11-15050811",
  ),
  ContactModel(
    icon: FontAwesomeIcons.whatsapp,
    text: "https://wa.me/1115050811",
  ),
  ContactModel(
    icon: FlutterDEVICON.linkedin_plain,
    text: "https://www.linkedin.com/in/thengyuanyuan",
  ),
  ContactModel(
    icon: FlutterDEVICON.github_original,
    text: "https://github.com/thengyuanyuan",
  ),
];
