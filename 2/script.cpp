#include <iostream>
using namespace std;

int main() {
    int n;

    cout << "Введите размерность массива: ";
    cin >> n;

    double* array = new double[n];
    cout << "Введите элементы массива:" << endl;
    for (int i = 0; i < n; i++) {
        cin >> array[i];
    }

    double max_element = array[0];
    int max_index = 0;

    for (int i = 1; i < n; i++) {
        if (array[i] > max_element) {
            max_element = array[i];
            max_index = i;
        }
    }

    double negative_product = 1.0;

    for (int i = 0; i < n; i++) {
        if (array[i] < 0) {
            negative_product *= array[i];
        }
    }

    double positive_sum = 0.0;

    for (int i = 0; i < max_index; i++) {
        if (array[i] > 0) {
            positive_sum += array[i];
        }
    }

    cout << "Максимальный элемент: " << max_element << endl;
    cout << "Произведение отрицательных элементов: " << negative_product << endl;
    cout << "Сумма положительных элементов до максимального: " << positive_sum << endl;

    return 0;
}
