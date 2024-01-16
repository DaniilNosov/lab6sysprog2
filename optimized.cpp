



#include <iostream>




void runLoop() {
    const int iterations = 10000000;
    const int a = 2;
    const int d = 3;
    long long sum = 0;
    const long long stopValue = 10000000000;


    for (int j = 0; j < 2; ++j) {
        for (int i = 1; i <= iterations; ++i) {
            sum += a + (i - 1) * d;
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
