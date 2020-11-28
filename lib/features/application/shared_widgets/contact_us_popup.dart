import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



/// Top navigation menu for the site
class ContactUsPopup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactUsPopup();
  }
}

class _ContactUsPopup extends State<ContactUsPopup> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width /1.1,
          height: MediaQuery
              .of(context)
              .size
              .height / 1.5,
          color: Colors.white.withOpacity(0.9),

          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  AlertDialog(
                    title: const Text('Write To Us'),
                    content: SingleChildScrollView(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
