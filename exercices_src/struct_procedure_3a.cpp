#include <iostream>

using namespace std;

struct cpx {
    double real;
    double img;
};

void diff(cpx x, cpx y, cpx &z) {
    z.real = x.real - y.real;
    z.img = x.img - y.img;
}

void multiply(cpx x, cpx y, cpx &z) {
    z.real = x.real * y.real - (x.img * y.img);
    z.img = x.real * y.img + x.img * y.real;
}

int main() {
    cpx x = { 1, 2 };
    cpx y = { 2, 1 };
    cpx z = { -1, 3 };

    diff(z, x, y);

    multiply(x, y, z);

    cout << z.real << " " << z.img << endl;
}