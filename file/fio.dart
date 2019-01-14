import 'dart:io';
import 'dart:convert';

void main() {
    new File("something.text").openRead()
        .transform(UTF8.decoder)
        .transform(const LineSplitter())
        .forEach((line) {
            print("> $line");
        });
}
