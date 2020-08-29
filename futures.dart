import 'dart:async';

// A Future is similar to JavaScript Promise
void main() {
  // Passing a callback to then() will invoke
  // that callback when the future completes
  // onReady.then((String status) {
  onReady().then((String status) {
    print(status);
  });

  // Futures can be chained
  onReady().then(print).then((_) => print('Done!'));

  // Futures can throw errors:
  // onReady().catchError(() => print('Error!'));
  onReady()
      .then((String msg) => print('Hello'))
      .catchError((onError) => print('Found Errors!'));
}

// Future<String> get onReady {
Future<String> onReady() {
  var duration = new Duration(seconds: 1);
  var oneSecond = new Future.delayed(duration);

  // throw ('Test error!');
  return Future.error(Exception('Testing errors'));

  // Since `oneSecond` is a future, we call call then()
  // which will execute after one second delay
  // every then() returns a Future too
  return oneSecond.then((_) => 'Loaded!@@@');
}
