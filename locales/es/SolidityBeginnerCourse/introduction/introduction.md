Bienvenido a este curso interactivo en Solidity para principiantes.

En esta primera sección, daremos una breve introducción sobre los conceptos que cubrirá este curso, miraremos ejemplos de contratos inteligentes y le enseñaremos cómo puede interactuar con este contrato en el IDE Remix.

Este contrato es un contrato contador cuya función es incrementar, decrementar y retornar el estado de una variable contadora.

Si miramos el principio de los contratos, podemos ver información sobre el contrato como la licencia (línea 1), la versión de Solidity (línea 2), así como la palabra clave `contract` y su nombre `Counter` (línea 4). Cubriremos estos conceptos en la próxima sección sobre la
**Syntaxis Básica** (Basic Syntax).

Con `uint public count` (el contador público uint) (íinea 5), declaramos una variable de estado de tipo `uint` con la visibilidad `public`. Cubriremos estos conceptos en nuestra sección sobre **Variables**, **Tipos de data primitivos** (Primitive Data Types), y **Visibilidad** (Visibility).

Creamos la función `get` (línea 8) que se define con la palabra clave `view` y devuelve un tipo `uint`. Específicamente devuelve la variable `count`. Este contrato tiene dos funciones más, una función `inc` (línea 13) y`dec` (línea 18) que incrementa o decrementa las variables contables.
Hablaremos de estos conceptos en nuestras secciones sobre **Funciones - Leyendo y escribiendo una variable de estado** (Functions - Reading and Writing to a State Variable) y **Funciones - Vista y pura** (Functions - View and pure).

## Compilar e implemente a través de Remix

**GIF** Interactuando con el contrato: <img src="https://github.com/dacadeorg/remixMedia/blob/main/solidity-beginner-course/introduction.gif?raw=true" alt="Compile and deploy contract" width="300"/>

1. Podemos compilar su contrato "Counter" en el módulo "Solidity compiler" del Remix IDE.

2. En el módulo "Desplegar y ejecutar transacciones", seleccionamos nuestro contrato "Contador" en el campo de entrada del contrato y hacemos clic en el botón "Desplegar".

3. Interactuamos con el contrato y probamos sus funciones `get`, `inc`, y `dec`.

## ⭐️ Misión

A través de este curso, le daremos una misión para probar y consolidar los conocimientos adquiridos.

Su primera misión es:

1. Compilar este contrato.
2. Despliégalo en la máquina virtual Remix.
3. Interactuar con tu contrato.
