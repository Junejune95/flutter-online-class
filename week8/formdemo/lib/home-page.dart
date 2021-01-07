import 'package:flutter/material.dart';
import 'package:formdemo/add-form.dart';
import 'package:formdemo/model/contact-model.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myContacts = <ContactModel>[
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Mg Mg",
      userEmail: "mgmg@gmail.com",
      userPhone: "223432434",
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Zon",
      userEmail: "zon@gmail.com",
      userPhone: "223432434",
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Ye",
      userEmail: "Ye@gmail.com",
      userPhone: "223432434",
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Mon",
      userEmail: "mon@gmail.com",
      userPhone: "223432434",
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Zaw",
      userEmail: "zaw@gmail.com",
      userPhone: "223432434",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (c) => AddForm(
                          addcontact: addContact,
                        ),
                      ),
                    );
                  })
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext content, int index) {
                return Column(
                children: [
                  ListTile(title: Text(myContacts[index].userName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8,),
                      Text(myContacts[index].userEmail),
                      SizedBox(height: 4,),
                      Text(myContacts[index].userPhone),
                      
                    ],
                  ),
                  
                  ),
                  Divider(thickness: 2,)
                ],
              );
              },
              childCount: myContacts.length,
            ),
          )
        ],
      ),
    );
  }

  void addContact(ContactModel contact) {
    setState(() {
      myContacts.add(contact);
    });
  }

  bool deleteContact(String id) {
    myContacts.where((c) => c.id == id);
    return true;
  }
}
