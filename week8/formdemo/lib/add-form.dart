import 'package:flutter/material.dart';
import 'package:formdemo/model/contact-model.dart';
import 'package:formdemo/widgets/app-custom-button.dart';
import 'package:formdemo/widgets/app-textfield.dart';
import 'package:formdemo/widgets/form-button.dart';

class AddForm extends StatefulWidget {
  final Addcontact addcontact;

  const AddForm({Key key, this.addcontact}) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formState,
          child: ListView(
            children: [
              // TextField(
              //   // maxLength: 10,
              //   maxLines: null,
              //   autocorrect: true,
              //   textAlign: TextAlign.center,
              //   // onChanged:(value){
              //   //   print(value);
              //   // } ,

              //   controller: nameController,
              //   // onSubmitted: (value) {
              //   //   print(value);
              //   // },//when click "done" from keyboard
              //   autofocus: true,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              //   onEditingComplete: () {
              //     print("on editing complete");
              //   },
              // ),
              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   textInputAction: TextInputAction.go,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              // ),
              // TextField(
              //   keyboardType: TextInputType.phone,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     prefix: Text("+95"),
              //     suffixIcon: Icon(Icons.check_circle),
              //     prefixIcon: Icon(Icons.phone),
              //     labelText: "Phone Number",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              // ),
              AppTextField(
                validator: (value) {
                  if (value.length < 4 || value.isEmpty) {
                    return "Please Enter Real Name";
                  }
                  return null;
                },
                label: "UserName",
                hintText: "Enter Your Name",
                icon: Icons.person,
                prefix: null,
                controller: nameController,
              ),
              AppTextField(
                validator: (value) {
                  if (!value.contains("@") || value.isEmpty) {
                    return "Enter email";
                  }
                  return null;
                },
                label: "Email ",
                hintText: "Enter your email",
                icon: Icons.mail,
                prefix: null,
                controller: emailController,
                textInputType: TextInputType.emailAddress,
              ),
              AppTextField(
                validator: (value) {
                  if (value.length < 10 || value.isEmpty) {
                    return "Enter Your phone number";
                  }
                  return null;
                },
                label: "Phone ",
                hintText: "Enter your phone",
                icon: Icons.phone,
                prefix: "+95",
                controller: phoneController,
                textInputType: TextInputType.phone,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // AppCustomButton(
                  //   color: Colors.grey[200],
                  //   textColor: Colors.black,
                  //   child: Text("Cancel"),
                  //   onPressed: () {},
                  //   height: 45,
                  // ),

                  // IconButtonLabel(
                  //   label: "Edit",
                  //   icon: Icons.edit,
                  //   onPressed: () {},
                  // ),
                  FormButton(
                    label: "Cancel",
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  AppCustomButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text("Save"),
                    onPressed: submit,
                    height: 45,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    var username = nameController.text;
    var useremail = emailController.text;
    var userphone = phoneController.text;

    final newContact = ContactModel(
      userName: username,
      userEmail: useremail,
      userPhone: userphone,
    );
    if (formState.currentState.validate()) {
      widget.addcontact(newContact);
      Navigator.of(context).pop(); 
    }
  }
}
