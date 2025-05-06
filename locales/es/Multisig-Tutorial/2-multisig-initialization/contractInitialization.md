En esta sección, exploraremos el **proceso de inicialización** del contrato inteligente multifirma. Examinaremos la función constructora y repasaremos cómo se configura el estado inicial del contrato.

## Nota

A partir de esta sección en este tutorial, iremos construyendo un contrato multifirma. En las secciones posteriores, el contrato se completará cada vez más.

## General

En esta sección, el contrato consiste en eventos, variables de estado, modificadores y funciones. **Eventos** proporcionan transparencia al registrar las actividades especificadas en la cadena de bloques, mientras que **modificadores** se aseguran de que sólo los usuarios autorizados puedan ejecutar ciertas funciones.

## Variables de la escena

En la línea 4, tenemos el contrato MultisigWallet propiamente dicho. Al principio del contrato, tenemos tres variables estatales.

1. **`owners`:** Una matriz que contiene las direcciones de todos los propietarios de la cartera multifirma (línea 5).
2. **`isOwner`:** Un mapeo que indica si una dirección es un propietario (Linea 6).
3. **`numConfirmationsRequired`:** El número de confirmaciones requeridas para una transacción (Linea 7).

La configuración de mapeo y mapeo nos permite recuperar fácilmente la lista de propietarios y verificar si una dirección es propietaria.

## Modificadores

A continuación, tenemos un modificador llamado `onlyOwner` (línea 9). Los modificadores en Solidity son palabras clave especiales que pueden ser usadas para enmendar el comportamiento de las funciones. En nuestro caso, el modificador `onlyOwner` asegura que sólo los propietarios pueden ejecutar una función. Esto lo hace comprobando si la dirección del **llamador** es un propietario.

## Función Constructor

La función `constructor` (Line 14) se ejecuta sólo una vez durante el despliegue del contrato. Inicializa parámetros esenciales, en este caso, la lista de propietarios y el número requerido de confirmaciones (Línea 14).

En las líneas 15 y 16, tenemos dos sentencias `require` para asegurar que las entradas sean válidas. En este caso exigimos que haya al menos un propietario y que el número de confirmaciones requeridas sea mayor que cero y menor o igual que el número de propietarios.

El constructor entonces inicializa el estado del contrato verificando que no es address(0) (Línea 25) y que el propietario es único (Línea 26).  Luego añade un par clave/valor al mapeo isOwner (línea 28), y luego rellena la matriz `owners` con las direcciones del propietario proporcionadas (Linea 29).

Por último, establece la variable `numConfirmationsRequired` con el valor especificado (línea 32).

## función getOwners

La función `getOwners` (línea 36) permite a los usuarios recuperar la lista de propietarios de la cartera multifirma. Devuelve el conjunto `owners` (Línea 37).

## función getNumConfirmationsRequired

La función `getNumConfirmationsRequired` (línea 41) permite a los usuarios recuperar el número de confirmaciones necesarias para una transacción. Devuelve la variable `numConfirmationsRequired` (Línea 42).

## Conclusión

En esta sección, exploramos el proceso de inicialización del contrato inteligente Multisig. Examinamos la función del constructor y entendimos cómo establece el estado inicial del contrato.

## ⭐ Tarea: Desplegar una cartera multifirma

Implemente un contrato Multifirma con tres propietarios y requiera dos confirmaciones para la ejecución de la transacción.

1. Compilar contractInitialization.sol
2. Ir a Desplegar y Correr transacciones en Remix.
3. Expandir la sección "Desplegar".
4. Bajo "_OWNERS", introduzca tres, un arreglo de tres direcciones.
5. Bajo "_NUM_CONFIRMATIONS_REQUIRED", introduzca el número de confirmaciones requeridas para una transacción.

**Sugerencias:**

- Puede obtener direcciones del menú desplegable "CUENTAS".
- El conjunto de direcciones debe estar en el formato: ["0x123...", "0x456...", "0x789..."].