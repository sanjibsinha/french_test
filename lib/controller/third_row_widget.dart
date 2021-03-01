import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/name_clear_model.dart';


class ThirdRowWidget extends StatelessWidget {
  const ThirdRowWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('${context.watch<NameClearModel>().name}'),
                /**
                 * ElevatedButton(
                    /// this is our another [NumberModel] listener
                    /// read() will fire the event the changes the number
                    /// by adding 2
                    ///
                    onPressed: () =>
                    context.read<NumberModel>().incrementNumberByTwo(),
                    child: Text('Increment'),
                    ),
                 */
                FloatingActionButton(
                  onPressed: () => context.read<NameClearModel>().clearName(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ), // Th
              ],
            ),
          ),
        ),
      ],
    );
  }
}
