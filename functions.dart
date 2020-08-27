// single line functions
yell(str) => str.toUpperCase();

// Functions can have type annotations
List lines(String str) {
  return str.split('\n');
}

void main() {
  var poemLines = lines(poem);
  print(yell(poemLines.first));

  // functions are first class
  var whisper = (str) => str.toLowerCase();
  print(poemLines.map(whisper).last);
}

const poem = '''
The wren
Earns his living
Noiselessly.''';
