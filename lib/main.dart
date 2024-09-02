// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:them_by_bloc_flutter/bloc/theme_bloc.dart';
// import 'package:them_by_bloc_flutter/home.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ThemeBloc>(
//       create: (context) => ThemeBloc().add(GetCurrentThemeEvent()),
//       //
//       child: BlocBuilder<ThemeBloc, SubjectState>(
//         builder: (context, state) {
//           if (state is LodingThemeState) {
//             return MaterialApp(
//               theme: state.themeData,
//               debugShowCheckedModeBanner: false,
//               home: const Home(),
//             );
//           }

//           return Container();
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:them_by_bloc_flutter/bloc/theme_bloc.dart';
import 'package:them_by_bloc_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final themeBloc = ThemeBloc();
        themeBloc.add(GetCurrentThemeEvent());
        return themeBloc;
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is LodingThemeState) {
            return MaterialApp(
              theme: state.themeData,
              debugShowCheckedModeBanner: false,
              home: const Home(),
            );
          }

          return Container(); // أو يمكن وضع شاشة تحميل هنا إذا كانت الحالة غير معروفة
        },
      ),
    );
  }
}
