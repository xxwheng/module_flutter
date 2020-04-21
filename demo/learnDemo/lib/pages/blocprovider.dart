
import 'package:flutter/cupertino.dart';
import 'countbloc.dart';

class BlocProvider extends InheritedWidget {
  final CountBLoc bLoc = CountBLoc();
  BlocProvider({Key key, Widget child}):super(key:key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // return oldWidget.child != child;
    return true;
  }

  static CountBLoc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bLoc;
  }
  
}