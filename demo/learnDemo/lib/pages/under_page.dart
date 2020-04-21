import 'package:flutter/material.dart';

import 'blocprovider.dart';

class UnderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Page'),
      ),
      body: Center(
        child: StreamBuilder(
            stream: bloc.stream,
            initialData: bloc.value,
            builder: (context, snapshot)  {
              return Text(
                  "You hit me: ${snapshot.data} times",
                  style: Theme.of(context).textTheme.headline4,
                );
            }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bloc.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}