# Ejemplos de código para verificar CUDA y CUDNN

Hay tres ejemplos de códigos para verificar si la instalción de CUDA y CUDNN
está funcionando correctamente. 

  - [**simpleCUBLAS**](http://docs.nvidia.com/cuda/cuda-samples/index.html#ixzz4vtE3caMi) 
    Ejemplo de uso de CUBLAS usando la interfaz disponible desde CUDA 4.0.
  
  - **mnistCUDNN** Hace un _forward pass_ dada un red entrenada usando CUDNN.

  - **simpleCUDNNHandler** Solo crea un apuntador para el contexto de la biblioteca de CUDNN

Además en cada uno de los directorios hay una subcarpeta llamada `expectedOuput` donde
se encuentra lo que debería de devolver la ejecución del programa. 

Todos los ejemplos cuentan con un `Makefile` para su compilación.
