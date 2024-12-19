En esta sección, exploraremos la interfaz `IERC20`, una interfaz estándar para interactuar con los tokens ERC-20 y la interfaz `IWETH`, una interfaz estándar para interactuar con Ether envuelto (WETH). Comprender estas interfaces es crucial, ya que se utiliza en el contrato Uniswap V3 Swap para manejar las transferencias y aprobaciones de tokens.

Puedes encontrar un "Curso de tokens ERC20 de solidez" para principiantes en LearnEth para entender el estándar de tokens ERC20 con más detalle.

## Interfaz IERC20

En la línea 80, definimos la interfaz `IERC20`. Esta interfaz define un conjunto estándar de funciones que los tokens ERC-20 deben implementar. Examinemos las funciones clave dentro de esta interfaz:

### 1. totalSupply

En la línea 81, definimos la función "totalSupply". Esta función devuelve el suministro total del token.

### 2. balanceOf

En la línea 83, definimos la función `balanceOf`. Esta función devuelve el saldo de la dirección especificada.

### 3. transfer

En la línea 85, definimos la función de "transferencia". Esta función transfiere tokens del remitente al destinatario especificado.

### 4. allowance

En la línea 87, definimos la función "subsidia". Esta función devuelve la cantidad de fichas que el gastante puede gastar en nombre del propietario.

### 5. approve

En la línea 89, definimos la función "aprobar". Cuando se llama, esta función aprueba que un gastante gaste la cantidad especificada de tokens en nombre del remitente.

### 6. transferFrom

En la línea 91, definimos la función "transferFrom". Esta función transfiere tokens del remitente especificado al destinatario. El gastador solo puede llamar a la función si al gastador se le permite gastar la cantidad especificada de tokens en nombre del remitente.

### 7. Eventos

En las líneas 102-103, definimos los eventos de "Transferencia" y "Aprobación". Estos eventos se emiten cuando se llaman a las funciones "transferir" y "aprobar", respectivamente.

## IWETH Interface

En la línea 106, definimos la interfaz "IWETH". Esta interfaz amplía la interfaz "IERC20" y define dos funciones adicionales:

### 1. deposit

En la línea 107, definimos la función "depósito". Esta función deposita ETH en el contrato y devuelve la cantidad equivalente de WETH. Esta función se utiliza para envolver ETH en WETH.
Necesitamos envolver ETH en WETH porque el contrato Uniswap V3 Swap solo admite tokens ERC-20.

### 2. retirar

En la línea 109, definimos la función "retirar". Esta función retira la cantidad especificada de WETH del contrato y devuelve la cantidad equivalente de ETH. Esta función se utiliza para desenvolver WETH en ETH.

## Conclusión

En este tutorial, exploramos el contrato de intercambio V3 de Uniswap.  Para tener una idea completa de cómo funciona Uniswap, intente hacer algunos intercambios en el <a href="https://app.uniswap.org/" target="_blank">Uniswap DApp</a> y vaya a los <a href="https://docs.uniswap.org/" target="_blank">documentos de Uniswap</a>.
