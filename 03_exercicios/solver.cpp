#include <iostream>

template <typename T>
T fazer_algo(T a, T b) {
  return a + b;
}

int depois(int& a) {
    int x = a;
    a++;
    return x;
}

int antes(int& a) {
    a++;
    return a;
}

int main() {
    int a = 1, b = 2;

    int c = (++a <= 1) || (b-- >= a) || (a < b++);

    std::string a = "oi";
    std::string b = "ola";

    std::cout << fazer_algo(a, b) << std::endl;

    std::cout << fazer_algo("banana", "uva") << std::endl;
}