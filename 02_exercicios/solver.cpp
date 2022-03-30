#include <iostream>

int fatorial(int n) {
    if (n == 0) {
        return 1;
    }
    int fat = fatorial(n - 1);
    return fat * n;
}

int main() {
    int value = fatorial(5);
    std::cout << value << std::endl; 
}