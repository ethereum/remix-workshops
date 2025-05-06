El estándar ERC20 sólo describe la funcionalidad requerida y opcional que necesita tu contrato, pero puedes añadir una funcionalidad adicional.

En esta sección, añadimos la funcionalidad de quemar y acuñar autentificadores, así como la capacidad de pausar el contrato, usando las extensiones de OpenZeppelin.

Por supuesto, puedes escribir tu propia implementación o extensión del contrato ERC20 e importarlos en tu contrato. Pero los contratos de OpenZeppelin han sido auditados por expertos en seguridad y son una excelente manera de añadir la funcionalidad deseada.

### Acuñable

La función cuña permite que el creador del contrato acuñe (fichas adicionales) después de que el contrato haya sido desplegado (línea 22). Como parámetros de entrada, la función necesita la dirección a la que serán acuñados los autentificadores y la cantidad de autentificadores que deben ser acuñados.

No tenemos que importar `mint()` de otro contrato ya que la función de la cuña ya es parte del contrato <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20</a> implementación de OpenZeppelin. Importamos `Ownable` (línea 7) que es un módulo de contrato que proporciona un mecanismo de control de acceso básico que permite a un propietario tener acceso exclusivo a funciones específicas. En este contrato, añadimos el modificador heredado `onlyOwner` a la función `mint` (línea 22) y restringimos el acceso a esta función al "propietario".

El contrato heredará funciones adicionales como propietario(), transferOwnership() y renunciará a Ownership() para administrar el acceso, desde el <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownable contract</a>.

### Quemable

Importando el "ERC20Burnable" (línea 5) y heredando sus funciones (línea 9) nuestro contrato permite a los poseedores de autentificadores destruir sus autentificadores así como los autentificadores en su permiso.
Para más información, échale un vistazo al <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">contrato ERC20Burnable</a>.

### En pausa

Con el módulo "En pausa" (línea 6 y 9) el propietario puede pausar (línea 14) y desactivar (línea 18) el contrato. En el estado pausa, los autentificadores no se pueden transferir, lo que puede ser útil en escenarios de emergencia.
Para más información, échale un vistazo al <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">Pausable contrac</a>.

Échale un vistazo a OpenZeppelins <a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>, el cual permite añadir fácilmente funciones adicionales.

Si completaste exitosamente este curso, prueba el curso Learneth NFT como siguiente paso en tu recorrido.

## ⭐ Tarea

1. Intenta acuñar autentificadores a una cuenta después del despliegue. Llama a `totalSupply()` y `balanceOf()` para confirmar la ejecución correcta.
2. Quema autentificadores y luego llama a `totalSupply()` y `balanceOf()` para confirmar la ejecución correcta.
3. Prueba la función de pausa pausando el contrato utilizando la cuenta del propietario e intentando hacer una transferencia a una segunda cuenta. La transacción no debe ser capaz de ser ejecutada y arrojará la excepción: "En pausa: pausado".
