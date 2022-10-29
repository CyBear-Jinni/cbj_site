import 'package:cybear_jinni_site/presentation/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EasyToUseBenefitBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.black87,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.black45,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(30),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, integrationsRoute);
        },
        child: SizedBox(
          height: 390,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.users,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      size: 26,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Easy to Use',
                      style: TextStyle(
                          fontSize: 26,
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        'Enjoy',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FaIcon(
                    FontAwesomeIcons.check,
                    color: Colors.green,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'The application will add '
                      'discovered devices '
                      'automatically for you.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FaIcon(
                    FontAwesomeIcons.check,
                    color: Colors.green,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Simple user interface with'
                      ' clear separation between '
                      'different actions:\nscenes, '
                      'control devices,\n'
                      'routines, bindings.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
