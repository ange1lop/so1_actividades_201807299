Angel Marcos David Lopez Chacon
201807299

## Tarea 1

#### Tipos de kernel
##### 1.Microkernel
Estos kernel son mas compactos que otros nucleos, por lo cuál brindan abstracciones básicas del hardware. Con esto se busca ofrecer que los servicios trabajen de forma separada en cuanto a la politicade funcionamiento del sistema.

#### 2. Monolitico
Este kernel trabaja en un solo módulo lógico, careciendo de una interfaz definida para los subsitemas, teniendo el conjunto de direcciones en un solo espacio en la memoria ram. Estos incorporan códigos que operen con varios dispositivos, ejemplos de este son: DOS, MacOs, OpenVSM, Multics, Linux.

#### 3. Hibrido
Este es una combinación de los dos anteriores, ya que es como si fuera un microkernel con espacio adicional en memoria para poder ejecutarse mucho mas rapido que un microkernel. Ejemplos: Wilndows, NT, XNU(macOS), ReactOS.

#### Diferencias

| Caracteristica             | Microkernel    | Monólitico | Hibrído |
|-------------------|-------------|---------------|--------------|
| Modular   | si    | no | si |
| Portable   | si    | no  | no |
| Rendimiento   | Bajo    | Alto | Medio |

### User mode vs Kernel mode
Todo esto dependedera de como se ejecutará el programa, cuando un prgrama es montado, el user mode ejecutara el programa pero si tiene que pedir acceso al hardware a partir de los syscall al kernel mode, por ejemplo el uso de camara entre otras. Por lo cual dependiendo de como se ejecuta el programa este tendra mas o menos privilegios para acceder al hardware.

![https://github.com/ange1lop/so1_actividades_201807299/blob/main/tarea1/imagen1.png](https://github.com/ange1lop/so1_actividades_201807299/blob/main/tarea1/imagen1.png)

| Caracteristica             | User mode    | Kernel mode |
|-------------------|-------------|---------------|
| Forma   | Tiene acceso directo sin restriciones a los recursos    | Solo se ejecuta y se inicia |
| Interrupciones   | Todo el sistema operativo puede dejar de funcionar si ocurre una interrupcion    | Solo un porceso fallta  |
| Modos   | Modo privilegiado del sistema    | Modo restringido |
| Espacio en memoria   | Todos los procesos comparten un mismo espacio    | Consigue un espacio de memoria virtual |
| Restriccion   | Puede acceder a todo los programas de usuario como los de kernel    | No puede acceder directamente a los programas de kernel |
| Funcion   | Cuando se requiere dirigir a la cpu para la ejecuacion de una instruccion, por lo que es mas potente    | Conocido como modo de visualización, por lo que necesita de la api del kernel para ejecutarse. |