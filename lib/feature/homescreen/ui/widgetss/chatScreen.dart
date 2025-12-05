import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildTextFormField.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/listViewBuilder.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
 const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final _formkey = GlobalKey<FormState>();
  int item = 10;
  final TextEditingController _searchtextfield = TextEditingController();

  @override
  void dispose() {
    _searchtextfield.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),

            Buildtextformfield(
              title: "Search",
              hinttext: "AskHere",
              keyboardtype: TextInputType.text,
              controller: _searchtextfield,
              icon: Icons.search,
              validatorr: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some thing";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Listviewbuilder(
                itemcountt: 5,
                title: "Person Name",
                subtitel: "The Last Chat",
                time: "12.12",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
