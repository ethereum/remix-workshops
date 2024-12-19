# Establecer una tediosa serie de pasos

## Seguir esto podría ser tedioso, pero ese es el punto.

Vamos a:

- Implementar un contrato de votación en el que haya 3 propuestas introducidas en el constructor.
- Otorgue privilegios de voto a 2 direcciones adicionales (por lo que tenemos un total de 3 direcciones de votación).
- Tenga un voto de dirección para la propuesta 1 (índice basado en 0) y los otros dos voto para la propuesta 2.

1. Toma el 3_Ballot.sol de los archivos de solidity de muestra y compílalo.  A continuación, vaya al módulo **Despliegue y ejecución**.

2. Seleccione el entorno **JavaScript VM**.

3. En el parámetro del constructor - ponga **["0x5031000000000000000000000000000000000000000000000000000000000000000000000000000000000000", "0x503200000000000000000000000000000000000000000000000000000000", "0x50330000000000000000000000000000000000000000000000000000"]**\*\* Luego haga clic en el botón **Desplegar**.

4. Abra el contrato desplegado.

5. En la función **votar** poner en 2.  Esto significa que usted, como msg.sender y presidente, está votando por la propuesta en la posición 2, que es la última propuesta de nuestra lista.

6. Ahora tienes que dar a otras direcciones el derecho a votar.  Seleccione otra dirección en el menú desplegable **cuenta** y cópiela y luego **vuelva a la primera dirección**.  Pegue la dirección de copia en el cuadro de texto junto a la función giveRightToVote.  Y de nuevo, seleccione otra dirección y cópiela y **luego vuelva a la primera dirección** de nuevo y péguela en giveRightToVote.

7. Ahora tienes 3 direcciones con derecho a voto.

8. Cambie a una de las direcciones a las que dio derecho a votar y votar por la propuesta **1**.  (Pon **1** en el cuadro de texto junto a la función de voto).  Y luego cambia a la otra dirección y vota por la propuesta **2** con esa.

9. Abra la sección **Transacciones registradas** del módulo, haciendo clic en el sin. Haga clic en el icono del disco duro en la sección **Transacciones grabadas** para guardar sus pasos.
   ![recorder](https://github.com/ethereum/remix-workshops/blob/master/Recorder/2_Record/images/recorder.png?raw=true "recorder")

10. Obarás una ventana modal que te dice que quiere guardar un archivo llamado **scenario.json**.  Haz clic en Aceptar.

11. Haga clic en la función **propuesta ganadora** para confirmar que la propuesta final ganó, que es la propuesta en la posición 2 de la matriz. **0: uint256: winningProposal_ 2**
