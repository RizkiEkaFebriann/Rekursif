import 'dart:io';

int pascal(int baris, int kolom) {
  if (kolom == 0 || kolom == baris) {
    return 1;
  }
  return pascal(baris - 1, kolom - 1) + pascal(baris - 1, kolom);
}

void printPascal(int n) {
  for (int baris = 0; baris < n; baris++) {
    for (int kolom = 0; kolom <= baris; kolom++) {
      stdout.write("${pascal(baris, kolom)}".padLeft(4));
    }
    print("");
  }
}

void main() {
  int n = 6;

  printPascal(n);
}