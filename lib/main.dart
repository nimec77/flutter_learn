import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/algorithms/digital_palindrome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final digitalPalindrome = DigitalPalindrome();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: SizedBox.fromSize(
          size: const Size(100, 100),
          child: SizedBox.shrink(
            child: SizedBox.shrink(
              child: SizedBox.shrink(
                child: SizedBox.shrink(
                  child: SizedBox.shrink(
                    child: SizedBox.shrink(
                      child: Container(
                        child: SizedBox.shrink(
                          child: SizedBox.shrink(
                            child: Builder(
                              builder: (context) {
                                var counter = 0;

                                context.visitAncestorElements((element) {
                                  debugPrint(element.widget.runtimeType.toString());
                                  if (element.widget is SizedBox) {
                                    counter++;
                                  }
                                  return true;
                                });

                                debugPrint('counter:$counter');
                                return ColoredBox(
                                  color: counter > 5 ? const Color(0xff00ff00) : const Color(0xffff0000),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
