En este tutorial, exploraremos el contrato Uniswap V3 Swap para aprender sobre cómo funcionan los swaps de un solo salto y varios saltos.

Pero primero, algunos fundamentos de Uniswap.

## ¿Qué es Uniswap?

Uniswap es un intercambio descentralizado de criptomonedas. Permite a los usuarios intercambiar tokens sin necesidad de un intermediario centralizado. Uniswap es un jugador clave en el espacio de las finanzas descentralizadas (DeFi).

## ¿Cómo funciona Uniswap?

En lugar de utilizar un libro de pedidos como un intercambio centralizado tradicional, Uniswap utiliza un modelo de creador de mercado automatizado (AMM). En Uniswap, el AMM es un contrato inteligente que tiene reservas de tokens (Liquidity Pool). Los usuarios pueden comerciar entre tokens en el grupo de liquidez. El precio de cada token está determinado por la proporción de las reservas.

### Ejemplo paso a paso de una operación Uniswap

1. Alice quiere comerciar con 1 ETH para DAI.
2. Alice envía 1 ETH al contrato inteligente de Uniswap.
3. El contrato inteligente de Uniswap calcula la cantidad de DAI que Alice debería recibir en función del tipo de cambio actual.
4. El contrato inteligente de Uniswap envía el DAI a Alice.
5. El contrato inteligente de Uniswap añade el 1 ETH a sus reservas.
6. El contrato inteligente de Uniswap vuelve a calcular el tipo de cambio en función de las nuevas reservas.

Los tokens en el grupo de liquidez son proporcionados por los proveedores de liquidez. Cuando un proveedor de liquidez deposita tokens en un grupo de liquidez, recibe tokens de proveedor de liquidez a cambio. Los tokens de proveedor de liquidez representan la participación de un usuario en un grupo de liquidez.

Los usuarios de Uniswap pagan una tarifa por cada operación. La tarifa se paga a los proveedores de liquidez en forma de tokens adicionales para proveedores de liquidez.

## Contrato de intercambio de Uniswap

El contrato de intercambio de Uniswap permite a los usuarios intercambiar tokens utilizando Uniswap V3. Puede hacer intercambios de un solo salto, que permiten a los usuarios intercambiar un token por otro directamente. También puede hacer intercambios de varios saltos, lo que significa que los usuarios pueden intercambiar un token por otro mediante el enrutamiento a través de múltiples tokens. El enrutamiento en este contexto significa que el contrato de intercambio cambiará el token por otro token, luego cambiará ese token por otro token, y así sucesimente hasta que alcance el token deseado.

## Conclusiones

En esta sección, aprendimos sobre Uniswap, cómo funciona y cómo lo vamos a usar para intercambiar tokens.

## ⭐️ Asignación: Prueba de opción múltiple

### 1. ¿Qué es Uniswap?

1. Un protocolo de intercambio centralizado.
2. Un protocolo de intercambio descentralizado que utiliza un libro de pedidos.
3. Un protocolo de intercambio descentralizado que utiliza un modelo de creador de mercado automatizado (AMM).
4. Un protocolo de intercambio descentralizado que utiliza un libro de pedidos y un modelo de creador de mercado automatizado (AMM).

### 2) ¿Cómo determina Uniswap el precio de un token?

1. El precio de un token está determinado por la proporción de las reservas.
2. El precio de un token está determinado por la proporción de las reservas y el número de operaciones.
3. El precio de un token está determinado por la proporción de las reservas y el número de proveedores de liquidez.