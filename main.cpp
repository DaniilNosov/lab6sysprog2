#include <iostream>
void runLoop() {
    const int iterations = 10000000;
    long long sum = 0;
    const long long stopValue = 10000000000;
    for (int j = 0; j < 2; ++j) {
        for (int i = 1; i <= iterations; ++i) {
            sum += 2 + (i - 1) * 3;
            std::cout << sum << std::endl;

            if (sum > stopValue) {
                std::cout << sum << std::endl;
                return;
            }
        }
    }
}

int main() {
    runLoop();
    return 0;
}


