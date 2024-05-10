import '../models/project_model.dart';
import 'skill_items.dart';

List<ProjectModel> projectItemsList = [
  // 2024
  ProjectModel(
    title: "Flappy Bird Game",
    description:
        "A simple flappy bird game created with Flutter and Flame.\n- Learned about state management for Games with Flame.\n- Solved some Flutter Version Depreciated Issues in the app.\nFollowed tutorial from HeyFlutter.com (https://www.youtube.com/watch?v=zcs8qRBRz7w).",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/flappybird_welcome.png",
        imageSubtitle: 'Welcome Page',
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/flappybird_play.png",
        imageSubtitle: 'Play',
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/flappybird_gameover.png",
        imageSubtitle: 'Game Over',
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/flappybird_gameover2.png",
        imageSubtitle: 'Game Over',
      ),
    ],
    skillTags: [Skills.flutter],
    type: "Hobby Project",
    date: DateTime(2024, DateTime.march),
    githubLink: "https://github.com/thengyuanyuan/flappy_bird_game",
  ),

  ProjectModel(
    title: "To-Do App",
    description:
        "A simple Todo App created using Flutter.\n- Learned simple state management with BloC.\nFollowed Tutorial from Youtube. https://youtu.be/v2qsVmODAiQ?si=gCssiUMwIywYdx2k",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/todo_home.png",
        imageSubtitle: 'Home Page',
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/todo_addnewtask.png",
        imageSubtitle: 'Add New Task',
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/todo_deletetask.png",
        imageSubtitle: 'Delete Task',
      ),
    ],
    skillTags: [Skills.flutter],
    type: "Hobby Project",
    date: DateTime(2024, DateTime.march),
    githubLink: "https://github.com/thengyuanyuan/todo_app",
  ),

  // 2023
  // FYP
  ProjectModel(
    title: "MultiSchool Marketplace Management System",
    description:
        "A Dynamic Web App, an E-commerce System for Schools. My Final Year Project. It is an Industrial Final Year Project work with Winnefy (Malacca). It was designed with Velzon's HTML Template.",
    images: [
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_searchproducts.png",
          imageSubtitle: "Search Products"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_filterproducts.png",
          imageSubtitle: "Filter Products by Categories"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_productdetails.png",
          imageSubtitle: "Product Details"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_checkout.png",
          imageSubtitle: "Check Out"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_makepayment.png",
          imageSubtitle: "Make Payment"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_automatedemail.png",
          imageSubtitle: "Automated Email Sent to User"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_login.png",
          imageSubtitle: "Log In"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_profilescreen.png",
          imageSubtitle: "User Profile"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_editprofile.png",
          imageSubtitle: "Edit Profile"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_success.png",
          imageSubtitle: "Success Modal"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_editschool.png",
          imageSubtitle: "Edit School"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_changepassword.png",
          imageSubtitle: "Change Password"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_passwordpolicy.png",
          imageSubtitle: "Password Policy"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_logout.png",
          imageSubtitle: "Log Out"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_forgotpassword.png",
          imageSubtitle: "Forgot Password"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_emailsent.png",
          imageSubtitle: "Automated Email Sent"),
      ProjectImageModel(
          imagePath: "assets/images/projects/fyp_resetpassword.png",
          imageSubtitle: "Reset Password"),
    ],
    skillTags: [Skills.html, Skills.php, Skills.js, Skills.sql, Skills.mysql],
    type: "Final Year Project",
    date: DateTime(2023, DateTime.july),
  ),

  // 2022
  // ProjectModel(
  //   title: "PDF Viewer",
  //   description: "Simple PDF Viewer App Build in Flutter",
  //   images: [
  //     // TODO: Intern tasks
  //     ProjectImageModel(
  //       imagePath: "assets/images/projects/pdf_home.png",
  //       imageSubtitle: "PDF Viewer Home Page",
  //     ),
  //   ],
  //   skillTags: [Skills.flutter],
  //   type: "Intern Task",
  //   date: DateTime(2022, DateTime.may),
  //   githubLink: "https://github.com/thengyuanyuan/pdf_page",
  // ),

  // Intern practice
  ProjectModel(
    title: "Xylophone",
    description:
        "Simple Xylophone App Build in Flutter. One of the tutorial practices provided during internship.",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/xylophone_home.png",
        imageSubtitle: "Xylophone",
      ),
    ],
    skillTags: [Skills.flutter],
    type: "Intern Practice",
    date: DateTime(2022, DateTime.may),
    githubLink: "https://github.com/thengyuanyuan/xylophone",
  ),

  // Library Management System Web
  ProjectModel(
      title: "Library Management System (Web App)",
      description:
          "A Dynamic Web App, a system that stores books and issue records of a library.",
      images: [
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_memberhome.png",
            imageSubtitle: "Members Home Screen"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_booklist.png",
            imageSubtitle: "Book List"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_bookdetails.png",
            imageSubtitle: "Book Details"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_issuerecords.png",
            imageSubtitle: "Issue Records List"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_recorddetails.png",
            imageSubtitle: "Issue Record Details"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_librarianlogin.png",
            imageSubtitle: "Librarian Log In"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_logout.png",
            imageSubtitle: "Log Out"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_addbook.png",
            imageSubtitle: "Add New Book"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_addlibrarian.png",
            imageSubtitle: "Add New Librarian"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_memberlist.png",
            imageSubtitle: "Member List"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_memberdetails.png",
            imageSubtitle: "Member Details"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_memberlogin.png",
            imageSubtitle: "Member Log In"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_memberprofile.png",
            imageSubtitle: "Member's Profile"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_changepassword.png",
            imageSubtitle: "Change Password"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_membersignup.png",
            imageSubtitle: "Sign Up as Member"),
        ProjectImageModel(
            imagePath: "assets/images/projects/libraryweb_signupsuccess.png",
            imageSubtitle: "Sign Up Success"),
      ],
      skillTags: [Skills.html, Skills.php, Skills.js, Skills.sql, Skills.mysql],
      type: "University Project",
      date: DateTime(2022, DateTime.march),
      githubLink: "https://github.com/thengyuanyuan/library_management_system",
      documentLink:
          "assets/files/thengyuanyuan_librarymanagementsystem_report.pdf"),

  // MYCOVID dynamic Website
  ProjectModel(
    title: "MYCOVID",
    description: "A dynamic website shows covid status in charts.",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_home.png",
        imageSubtitle: "Home Page Show Overall Status in Malaysia",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_new.png",
        imageSubtitle: "New Cases in Malaysia",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_adminlogin.png",
        imageSubtitle: "Admin Login",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_addrecord.png",
        imageSubtitle: "Admin Add Record",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_dataupdated.png",
        imageSubtitle: "Data Updated Successful",
      ),
    ],
    skillTags: [
      Skills.html,
      Skills.css,
      Skills.php,
      Skills.js,
      Skills.sql,
      Skills.mysql
    ],
    type: "University Project",
    date: DateTime(2022, DateTime.march),
    documentLink: "assets/files/thengyuanyuan_mycovid_report.pdf",
  ),

  // 2021
  // Employee Payroll Java
  ProjectModel(
    title: "Employee Payroll System",
    description:
        "An Employee Payroll System with GUI, created using Java. Two types of users: Admin and Employee. ",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/employee_payroll.png",
        imageSubtitle: "Login Page",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/employee_payroll2.png",
        imageSubtitle: "Employee View Page",
      ),
    ],
    skillTags: [Skills.java, Skills.sql],
    type: "University Project",
    date: DateTime(2021, DateTime.november),
    githubLink: "https://github.com/thengyuanyuan/employee-payroll-system",
  ),

  // Calculator Java
  ProjectModel(
    title: "Calculator",
    description: "A simple calculator with GUI, created using Java",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/calculator.png",
        imageSubtitle: "The Calculator",
      ),
    ],
    skillTags: [Skills.java],
    type: "Hobby Project",
    date: DateTime(2021, DateTime.october),
    githubLink: "https://github.com/thengyuanyuan/calculator",
  ),

  // 2020
  // Library Seat Reservation CPP
  ProjectModel(
    title: "Library Seat Reservation",
    description:
        "A simple Library Seat Reservation System build in C++, university project when I was studying foundation in IT, my very first programme.",
    images: [
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_welcomescreen.png",
          imageSubtitle: "Welcome Screen"),
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_chooseseat.png",
          imageSubtitle: "Choose Seat"),
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_bookseatprocess.png",
          imageSubtitle: "Booking Process"),
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_bookingdetails.png",
          imageSubtitle: "Booking Details"),
      ProjectImageModel(
          imagePath:
              "assets/images/projects/librarycpp_personalinformation.png",
          imageSubtitle: "Enter Personal Information"),
      ProjectImageModel(
          imagePath:
              "assets/images/projects/librarycpp_confirmpersonalinformation.png",
          imageSubtitle: "Confirm Personal Information"),
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_paymentprocess.png",
          imageSubtitle: "Payment Process"),
      ProjectImageModel(
          imagePath: "assets/images/projects/librarycpp_receipt.png",
          imageSubtitle: "Receipt"),
    ],
    skillTags: [Skills.cpp],
    type: "University Project",
    date: DateTime(2020, DateTime.february),
    githubLink: "https://github.com/thengyuanyuan/library_seat_reservation",
    documentLink:
        "assets/files/thengyuanyuan_libraryseatreservation_report.pdf",
  ),
];
