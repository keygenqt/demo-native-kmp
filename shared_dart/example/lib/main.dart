import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_dart/shared_dart.dart' as shared_dart;
import 'package:shared_dart_example/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<String> userRaw;

  @override
  void initState() {
    super.initState();
    /// Query in package dart
    userRaw = shared_dart.user('keygenqt');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const textStyle2 = TextStyle(fontSize: 18);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Center(
              child: SizedBox(
                width: 600,
                child: Column(
                  children: [
                    const Text(
                      'This calls a KMP native function through FFI that is shipped as source in the package. '
                          'The native code is built as part of the Flutter Runner build.',
                      style: textStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Request via Ktor to KMP native in GitHub REST API:',
                      style: textStyle2,
                      textAlign: TextAlign.center,
                    ),
                    spacerSmall,
                    const Text(
                      'https://api.github.com/users/keygenqt',
                      style: textStyle2,
                      textAlign: TextAlign.center,
                    ),
                    spacerSmall,
                    FutureBuilder<String>(
                      future: userRaw,
                      builder: (BuildContext context, AsyncSnapshot<String> value) {
                        if (value.hasData) {
                          final model = UserEntity.fromJson(json.decode(value.data!));
                          return Column(
                            children: [
                              const SizedBox(height: 30),
                              Text(
                                'Login: ${model.login}',
                                style: textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Name: ${model.name}',
                                style: textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Created: ${model.created_at}',
                                style: textStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
