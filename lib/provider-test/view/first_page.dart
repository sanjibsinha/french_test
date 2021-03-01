import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/first_model_class.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${context.watch<FirstModelClass>().value}',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () => context.read<FirstModelClass>().changeValue(),
          tooltip: 'Change Name',
          child: Icon(
            Icons.ac_unit,
          ),
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
