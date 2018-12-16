import 'dart:isolate';

// 起動するisolateのエントリポイントとなる関数。
// トップレベル関数かstaticメソッドである必要がある。
void invokeIsolate(initialMessage) => print(initialMessage);

void main() {
  // isolateを起動する。
  Isolate.spawn(invokeIsolate, "initial message");
}
