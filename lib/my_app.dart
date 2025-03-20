import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/introduction/introduction_bloc.dart';
import 'routes/my_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => IntroductionBloc()),
        ],
        child: MaterialApp.router(
          routerConfig: MyRoute().router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
