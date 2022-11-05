import 'package:flutter/material.dart';
import 'package:local_session_timeout/local_session_timeout.dart';
import 'package:regi_appli/login.dart';
import 'package:regi_appli/register.dart';
import 'main.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);
  @override
  dashboardState createState() => dashboardState();
}

class dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    //
    // final sessionConfig = SessionConfig(
    //     invalidateSessionForAppLostFocus: const Duration(seconds: 15),
    //     invalidateSessionForUserInactivity: const Duration(seconds: 30));
    // sessionConfig.stream.listen((SessionTimeoutState timeoutEvent) {
    //   var timeout;
    //   if (timeout == SessionTimeoutState.userInactivityTimeout) {
    //     // handle user  inactive timeout
    //     // Navigator.of(context).pushNamed("/auth");
    //   } else if (timeout == SessionTimeoutState.appFocusTimeout) {
    //     // handle user  app lost focus timeout
    //     // Navigator.of(context).pushNamed("/auth");
    //   }
    // });

    return
        // SessionTimeoutManager(
        // sessionConfig: sessionConfig,
        // child:
        MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 555,
                width: 555,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyLogin()),
                  );
                },
                // onPressed: () {
                //   Navigator.pushNamed(context, 'register');
                // },
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
