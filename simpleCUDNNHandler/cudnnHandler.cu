#include <iostream>
#include "cudnn.h"

using namespace std;

int main(int argc, char const *argv[]) {
    cout << "hello cuda" << endl;
    cudnnStatus_t status;
    cudnnHandle_t handle;
    status = cudnnCreate(&handle);
    cout << "status " << status << endl; 
    cudnnDestroy(handle);
    return 0;
}
