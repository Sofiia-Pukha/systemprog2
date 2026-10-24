// dot.cpp: скалярний добуток двох масивів
#include <iostream>
#include <vector>
#include <cstdlib>

const int N = 50000000;
const int REPEATS = 30;

__attribute__((noinline)) void fill_arrays(std::vector<float>& a, std::vector<float>& b) {
    for (int i = 0; i < N; i++) {
        a[i] = i % 100;
        b[i] = (i % 7) * 0.5f;
    }
}

__attribute__((noinline)) float scalar_product(const std::vector<float>& a, const std::vector<float>& b) {
    float result = 0;
    for (int i = 0; i < N; i++) {
        result += a[i] * b[i];
    }
    return result;
}

int main(int argc, char** argv) {
    int repeats = REPEATS;
    if (argc > 1) repeats = std::atoi(argv[1]);

    std::vector<float> a(N), b(N);
    fill_arrays(a, b);

    float total = 0;
    for (int r = 0; r < repeats; r++) {
        a[0] = r;
        total += scalar_product(a, b);
    }

    std::cout << total << std::endl;
    return 0;
}
