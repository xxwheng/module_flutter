import 'package:flutter/material.dart';
import 'blocprovider.dart';
import 'under_page.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Top Page')),
      body: Center(
        child: StreamBuilder<int>(
          stream: bloc.stream,
          initialData: bloc.value,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            return Text(
              'hit mi: ${snapshot.data} times', style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnderPage()));
        },
      ),
    );
  }
}