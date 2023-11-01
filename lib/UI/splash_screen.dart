import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web2/Helper/AppHelpers.dart';
import 'package:flutter_web2/Model/color_pallete.dart';
import 'package:flutter_web2/Model/routes.dart';
import 'package:flutter_web2/riverpod/podstate.dart';

class SplashScreen extends ConsumerStatefulWidget{
  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 2),()=> AppHelpers.navigation.openPageNamedNoNav(Main.dashboard));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final lang=ref.watch(langModelProvider);
    return Scaffold(
      backgroundColor: Col.red,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: CircularProgressIndicator(color: Col.primary,strokeAlign: 55,),
            ),
            Center(
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    Icon(Icons.person, color: Col.primary, size: 45,),
                    Container(
                      child: Text(lang.value!.data!.where((element) => element!.key=='greetings').first!.message??''),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}