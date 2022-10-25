import 'package:cybear_jinni_site/application/new_home_page/new_home_page_bloc.dart';
import 'package:cybear_jinni_site/injection.dart';
import 'package:cybear_jinni_site/presentation/new_home_page/widgets/new_home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class NewHomePagePage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              alignment: Alignment.centerLeft,
              child: Text(
                'Vendors:',
                style: TextStyle(color: HexColor('#6599CA'), fontSize: 20),
              ),
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => getIt<NewHomePageBloc>()
                  ..add(const NewHomePageEvent.initialized()),
                child: NewHomePageWidget(),
              ),
            ),
            const SizedBox(
              height: 50,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
