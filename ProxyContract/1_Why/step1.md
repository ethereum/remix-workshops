# Contrato de proxy, también conocido como el despachador

## ¿Por qué?

Este es un gran patrón que se utiliza principalmente en **desarrollo de bibliotecas**.

Ayuda de las siguientes maneras:

- **Ahorre costos de gas en el momento de la implementación**El propósito de un alto costo de gas es desalentar las operaciones que cuestan mucho para su ejecución y fomentar un código optimizado.

- Los contratos de proxy son útiles cuando es necesario implementar muchas instancias del mismo contrato porque reducen las duplicaciones en la implementación.

- \*\*Evite la repetición de código en la cadena de bloques. \*\*Los cálculos pesados son caros porque cada nodo tendrá que realizarlos, esto, por supuesto, ralentiza la red.

- **Desarrollar contratos actualizables (versionados)**
  Cuando se implementa el contrato, es inmutable. Al rediseñar el código en diferentes contratos, es posible permitir actualizaciones lógicas mientras se mantiene el almacenamiento igual.

## Ejemplo de costo de gas

Almacenar el código de contrato en el momento de la creación puede costar hasta:

- 200 \* max_byte_code_length gas
- 200 \* 24576 = 49152004915200 \* 10 gwei = 49152000 gwei = 0.049152 ether = 9 EUR

vea https://github.com/ethereum/EIPs/blob/master/EIPS/eip-170.md Para obtener más información sobremax_byte_code_length.
