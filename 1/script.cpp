#include <iostream>

using namespace std;

int main() {
    int N;
    cout << "Введите размерность массива: ";
    cin >> N;

    double* array = new double[N];
    cout << "Введите элементы массива:" << endl;
    for (int i = 0; i < N; i++) {
        cin >> array[i];
    }

    double max = array[0];
    double min = array[0];
    int max_index = 0;
    int min_index = 0;

    for (int i = 1; i < N; i++) {
        if (array[i] > max) {
            max = array[i];
            max_index = i;
        }
        if (array[i] < min) {
            min = array[i];
            min_index = i;
        }
    }

    swap(array[max_index], array[min_index]);

    double sum = 0.0;
    double product = 1.0;
    for (int i = 0; i < N; i++) {
        sum += array[i];
        product *= array[i];
    }

    cout << "Массив после обмена:" << endl;
    for (int i = 0; i < N; i++) {
        cout << array[i] << " ";
    }
    cout << endl;

    cout << "Наибольший элемент: " << max << endl;
    cout << "Наименьший элемент: " << min << endl;
    cout << "Сумма элементов: " << sum << endl;
    cout << "Произведение элементов: " << product << endl;

    return 0;
}
