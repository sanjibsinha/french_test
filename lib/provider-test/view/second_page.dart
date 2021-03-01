import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/second_model_class.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${context.watch<SecondModelClass>().firstModelClass.value}',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () => context.read<SecondModelClass>().changeValue(),
          tooltip: 'Change Value',
          child: Icon(Icons.ac_unit_rounded),
        ),
        Divider(
          height: 20.0,
          thickness: 10.0,
          color: Colors.black,
        ),
      ],
    );
  }
}
