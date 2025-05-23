# Editando un escenario

Aquí están las primeras líneas del escenario que grabé.  Las direcciones de mi máquina serán diferentes a las tuyas.

```
{
"Cuentas": {

"Cuenta{0}": "0xca35b7d915458ef540ade6068dfe2f44e8fa733c",

"Cuenta{4}": "0xdd870fa1b7c4700f2bd7f44238821c26f7392148",

"Cuenta{3}": "0x583031d1113ad414f02576bd6afabfb302140225"

}
```

Así que si querías jugar a este escenario en otra testnet, tendrías que cambiar estas direcciones a la dirección en la que has probado ETH para poder pagar las transacciones.  Pero aparte de intercambiar las direcciones, puedes ejecutar esto rápidamente en otras redes.

Y podrías cambiar los parámetros de las funciones.

Por ejemplo, aquí hay un poco del scenario.json un poco más abajo, donde la propuesta 2 fue votada por una de las direcciones:

```
{
      "timestamp": 1566428184043,
      "record": {
        "value": "0",
        "parameters": [
          "2"
        ],
        "to": "created{1566428035436}",
        "abi": "0xc41589e7559804ea4a2080dad19d876a024ccb05117835447d72ce08c1d020ec",
        "name": "vote",
        "inputs": "(uint8)",
        "type": "function",
        "from": "account{4}"
      }
    },
```

Editemos esto para que otra propuesta gane en la reproducción.

Cambia la matriz de **parámetros** que ahora es:

```
"parameters": [
          "2"
        ]
```

para:

```
"parameters": [
          "1"
        ]
```
