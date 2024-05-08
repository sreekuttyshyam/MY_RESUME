import 'package:flutter/material.dart';
import 'package:my_resume/padded_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dorothy\'s Resume',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 43, 103, 206)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'My Resume',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  Text(
                    "Dorothy Ashokan Sukeshini",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              displayDividerRow(),
              const Row(
                children: [
                  Text("Email: dorothyashokansukeshini@gmail.com"),
                ],
              ),
              const Row(
                children: [
                  Text(
                      "LinkedIn: https://www.linkedin.com/in/dorothy-ashokan-sukeshini-30b0a6289"),
                ],
              ),
              sizedBox(20),
              const Row(
                children: [
                  Text(
                    "SUMMARY",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              displayDividerRow(),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Motivated and dedicated entry-level Flutter developer with a passion for mobile application development. Proficient in Dart programming language and experienced in building user friendly and responsive applications. Eager to contribute to innovative projects and continue learning and growing in the field of mobile development.",
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
              sizedBox(20),
              const Row(
                children: [
                  Text(
                    "SKILL SETS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              displayDividerRow(),
              sizedBox(10),
              Row(
                children: [
                  Expanded(
                    child: Table(
                        columnWidths: const {
                          0: FractionColumnWidth(0.3),
                          1: FractionColumnWidth(0.7)
                        },
                        border: TableBorder
                            .all(), // Allows to add a border decoration around your table
                        children: [
                          createTableRow('Framework', 'Flutter, Android'),
                          createTableRow('Languages', 'Dart, JavaScript'),
                          createTableRow('Web', 'HTML, CSS'),
                          createTableRow('Database', 'MySQL'),
                          createTableRow('Version Management', 'Git'),
                          createTableRow(
                              'IDE', 'Visual Studio Code, Android Studio'),
                        ]),
                  ),
                ],
              ),
              sizedBox(20),
              const Row(
                children: [
                  Text(
                    "PROJECTS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              displayDividerRow(),
              const Row(
                children: [
                  Text(
                    "Priva Absolute Fashion – Flutter based mobile application.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              sizedBox(10),
              projectDetailsRow(
                  'Priva absolute fashion is a cross-platform mobile application developed using Flutter and Firebase, designed to provide a seamless shopping experience for users looking to purchase clothing items. The application allows users to browse through a wide range of clothing products, add items to their cart, and securely checkout using various payment options.'),
              sizedBox(10),
              const Row(
                children: [
                  Text(
                    "Key Features:",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    projectDetailsRow(
                        '1. User Authentication: The application provides secure authentication mechanisms, allowing users to sign up and log in using their email address or social media accounts.'),
                    projectDetailsRow(
                        '2. Product Catalog: Users can browse through a comprehensive catalog of clothing items, including images,descriptions, prices, and available sizes.'),
                    projectDetailsRow(
                        '3. Search and Filters: The application offers advanced search and filter options, enabling users to quickly find specific products based on categories, sizes, colors, and other criteria.'),
                    projectDetailsRow(
                        '4. Shopping Cart: Users can add and remove items from their shopping cart, review their selections, and proceed to checkout with ease.'),
                    projectDetailsRow(
                        '5. Checkout Process: The checkout process is streamlined, offering multiple payment options such as credit/debit card, PayPal, and others, ensuring a seamless and secure transaction experience.'),
                    projectDetailsRow(
                        '6. Order History: Users have access to their order history, allowing them to track the status of their orders and view details of past purchases.'),
                    projectDetailsRow(
                        '7. Notifications: The application sends push notifications to users, keeping them informed about order status updates, promotions, and other relevant information.'),
                    projectDetailsRow(
                        '8. Admin Panel: The application includes an admin panel accessible through a web interface, allowing the shop owner to manage products, orders, and user accounts efficiently.')
                  ],
                ),
              ),
              sizedBox(10),
              const Row(
                children: [
                  Text(
                    "Technology Stack:",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const TechnologyStackContainer(),
              sizedBox(20),
              const Row(
                children: [
                  Text(
                    "EDUCATION",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              displayDividerRow(),
              sizedBox(10),
              Row(
                children: [
                  Expanded(
                      child: Table(
                    columnWidths: const {
                      0: FractionColumnWidth(0.3),
                      1: FractionColumnWidth(0.7)
                    },
                    border: TableBorder.all(),
                    children: [
                      createTableRow('April 2004',
                          'Master of Computer Application from Manonmaniam Sundaranar University, Tirunelveli, Tamil Nadu, India'),
                      createTableRow('May 2001',
                          'Bachelor of Computer Science from Kerala University, Thiruvananthapuram, Kerala, India'),
                    ],
                  ))
                ],
              ),
              sizedBox(20),
              const Row(
                children: [
                  Text(
                    "CERTIFICATION",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              displayDividerRow(),
              sizedBox(10),
              Row(
                children: [
                  Expanded(
                      child: Table(
                    columnWidths: const {
                      0: FractionColumnWidth(0.3),
                      1: FractionColumnWidth(0.7)
                    },
                    border: TableBorder.all(),
                    children: [
                      createTableRow('May 2020',
                          'Introduction to Flutter development using Dart'),
                      createTableRow('May 2024',
                          'The complete Flutter development bootcamp with Dart'),
                    ],
                  ))
                ],
              ),
              sizedBox(15),
              displayDividerRow(),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(fontStyle: FontStyle.italic),
                        children: [
                          TextSpan(text: 'This page is developed using'),
                          TextSpan(
                              text: ' Flutter',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' and hosted in'),
                          TextSpan(
                              text: ' Firebase',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: '.'),
                        ]),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(fontStyle: FontStyle.italic),
                          children: [
                        TextSpan(text: 'The source code is available in'),
                        TextSpan(
                            text: ' GitHub',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        TextSpan(text: '.'),
                      ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row displayDividerRow() {
    return const Row(
      children: [
        Expanded(
            child: Divider(
          thickness: 1.5,
        ))
      ],
    );
  }

  Row projectDetailsRow(String string) {
    return Row(
      children: [
        Expanded(
          child: Text(string, overflow: TextOverflow.clip),
        ),
      ],
    );
  }

  SizedBox sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  createTableRow(String left, String right) {
    return TableRow(children: [
      PaddedColumn(
        name: left,
      ),
      PaddedColumn(
        name: right,
      ),
    ]);
  }
}

class TechnologyStackContainer extends StatelessWidget {
  const TechnologyStackContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          technologyStackRow('Frontend: Flutter'),
          technologyStackRow(
              'Backend: Firebase (Firestore, Authentication, Cloud Functions)'),
          technologyStackRow('Database: Firebase Realtime Database'),
          technologyStackRow(
              'Payment Gateway: Integration with Stripe, PayPal, or other payment gateways'),
          technologyStackRow(
              'Push Notifications: Firebase Cloud Messaging (FCM)'),
          technologyStackRow('Version Control: Git (GitHub)'),
        ],
      ),
    );
  }

  Row technologyStackRow(String string) {
    return Row(
      children: [Text(string)],
    );
  }
}
