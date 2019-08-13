import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testbloc/service_action_bean.dart';
import 'package:testbloc/service_action_bloc.dart';
import 'package:testbloc/service_action_event.dart';
import 'package:testbloc/service_action_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<ServiceActionBloc>(
            builder: (_) => ServiceActionBloc(),
          ),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ServiceActionBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: BlocListener(
          bloc: bloc,
          listener: (_, BaseServiceState state) {
            if (state is ServiceActionState) {
              if (state.actionBean.currentHeaderFlag ==
                  ActionHeaderFlag.warranty) {
                print('currentHeaderFlag is warranty!');
              }
            }
          },
          child: BlocBuilder(
            bloc: bloc,
            builder: (_, BaseServiceState state) {
              if (state is ServiceActionState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      state.actionBean.warranty ? 'click' : 'cancel click',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.dispatch(WarrantyActionEvent(ServiceActionBean()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
