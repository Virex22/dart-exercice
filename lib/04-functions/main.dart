void exercice1() {
  sayHello(name: "John");
}

void sayHello({required String name}) {
  print("Hello, $name");
}

void exercice2() {
  int a = 5;
  int b = 10;
  print(sum(a: a, b: b));
}

int sum({required int a, required int b}) {
  return a + b;
}

void exercice3() {
  print(sumMany([1, 2, 3, 4, 5]));
}

int sumMany(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void exercice4() {
  sumAndPrint(1, 1, shouldPrint: true);
}

void sumAndPrint(num param1, num param2, {bool shouldPrint = false}) {
  num result = param1 + param2;
  if (shouldPrint) {
    print("$param1 + $param2 = $result");
  }
}

void exercice5() {
  print(sumAndFormat(1, 1));
  print(sumAndFormat(1, 1, ft: FormatType.int));
  print(sumAndFormat(1.5, 1.5, ft: FormatType.double));
}

enum FormatType { int, double }

num sumAndFormat(num param1, num param2, {FormatType ft = FormatType.int}) {
  num result = param1 + param2;
  if (ft == FormatType.int) {
    return result.toInt();
  } else {
    // dans tous les autres cas, on retourne un double
    return result;
  }
}

void exercice6() {
  String hello = "Hello";
  String reversed = () {
    return hello.split('').reversed.join();
  }();
  print(reversed);
}

void exercice7() {
  print(fibonacci(17));
}

List<int> fibonacci(int n) {
  List<int> result = [];
  int a = 0;
  int b = 1;
  for (int i = 0; i < n; i++) {
    result.add(a);
    int c = a + b;
    a = b;
    b = c;
  }
  return result;
}
