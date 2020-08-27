// ordered optional parameter
String yell(String str, [bool exlaim = false]) {
  var result = str.toUpperCase();
  if (exlaim) result += '!!!';
  return result;
}

// named optional parameters
String whisper(String str, {bool mysteriously: false}) {
  var result = str.toLowerCase();
  if (mysteriously) result += '...';
  return result;
}

void main() {
  print(yell('Hello, World'));
  print(yell('Hello, World', true));
  print(whisper('Hello, World', mysteriously: true));
}
