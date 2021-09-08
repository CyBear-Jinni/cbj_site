import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EasyToSetUpBenefitBlock extends StatelessWidget {
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
          Navigator.pushNamed(context, setUpRoute);
        },
        child: SizedBox(
          width: 320,
          height: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.fileDownload,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 30,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Easy to Set Up',
                        style: TextStyle(
                            fontSize: 30,
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
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
                          'Available',
                          style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
                    width: 280,
                    child: Text(
                      'Clear and easy instructions to get the Hub running.',
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
                    width: 280,
                    child: Text(
                      'Application can be found in the play store.',
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
                    width: 280,
                    child: Text(
                      'The application will connect to the Hub automaticly for you.',
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
