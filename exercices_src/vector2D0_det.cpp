/// BEGIN HIDDEN
#include <iostream>
#include <vector>
using namespace std;

int main() {
/// END HIDDEN
    vector<vector <int>> tab = V22;
    int d;

    d = tab[0][0] * tab[1][1] - tab[1][0] * tab[0][1];
    cout << d << endl;
/// BEGIN HIDDEN
}
/// END HIDDEN
