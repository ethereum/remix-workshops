In this section, we'll explore the `IERC20` interface, a standard interface for interacting with ERC-20 tokens and the `IWETH` interface, a standard interface for interacting with wrapped Ether (WETH). Understanding these interfaces is crucial as it is used in the Uniswap V3 Swap contract to handle token transfers and approvals.

You can find a "Solidity ERC20 Token Course" for beginners in LearnEth to understand the ERC20 token standard in more detail.

## IERC20 Interface

On line 80, we define the `IERC20` interface. This interface defines a standard set of functions that ERC-20 tokens must implement. Let's examine the key functions within this interface:

### 1. totalSupply

On line 81, we define the `totalSupply` function. This function returns the total supply of the token.

### 2. balanceOf

On line 83, we define the `balanceOf` function. This function returns the balance of the specified address.

### 3. transfer

On line 85, we define the `transfer` function. This function transfers tokens from the sender to the specified recipient.

### 4. allowance

On line 87, we define the `allowance` function. This function returns the amount of tokens that the spender is allowed to spend on behalf of the owner.

### 5. approve

On line 89, we define the `approve` function. When called, this function approves a spender to spend the specified amount of tokens on behalf of the sender.

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
