import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:them_by_bloc_flutter/bloc/theme_bloc.dart';
import 'package:them_by_bloc_flutter/them/AppThem.dart';

class SttengPage extends StatefulWidget {
  const SttengPage({super.key});

  @override
  State<SttengPage> createState() => _SttengPageState();
}

class _SttengPageState extends State<SttengPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppThem = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppThem]!.primaryColor,
              child: ListTile(
                title: Text(
                  itemAppThem.name,
                  style: appThemeData[itemAppThem]!.textTheme.titleMedium,
                ),
                onTap: () {
context.read<ThemeBloc>().add(ThemChangedEvent(theme: itemAppThem));
                },
              ),
            );
          },
        ));
  }
}

