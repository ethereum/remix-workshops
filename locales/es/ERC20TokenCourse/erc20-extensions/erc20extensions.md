El estándar ERC20 sólo describe la funcionalidad requerida y opcional que necesita tu contrato, pero puedes añadir una funcionalidad adicional.

En esta sección, añadimos la funcionalidad de quemar y acuñar autentificadores, así como la capacidad de pausar el contrato, usando las extensiones de OpenZeppelin.

Por supuesto, puedes escribir tu propia implementación o extensión del contrato ERC20 e importarlos en tu contrato. Pero los contratos de OpenZeppelin han sido auditados por expertos en seguridad y son una excelente manera de añadir la funcionalidad deseada.

### Acuñable

La función cuña permite que el creador del contrato acuñe (fichas adicionales) después de que el contrato haya sido desplegado (línea 22). Como parámetros de entrada, la función necesita la dirección a la que serán acuñados los autentificadores y la cantidad de autentificadores que deben ser acuñados.

No tenemos que importar `mint()` de otro contrato ya que la función de la cuña ya es parte del contrato <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20</a> implementación de OpenZeppelin. Importamos `Ownable` (línea 7) que es un módulo de contrato que proporciona un mecanismo de control de acceso básico que permite a un propietario tener acceso exclusivo a funciones específicas. En este contrato, añadimos el modificador heredado `onlyOwner` a la función `mint` (línea 22) y restringimos el acceso a esta función al "propietario".

El contrato heredará funciones adicionales como propietario(), transferOwnership() y renunciará a Ownership() para administrar el acceso, desde el <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownable contract</a>.

### Quemable

By importing the "ERC20Burnable" (line 5) and inheriting its functions (line 9) our contract allows token holders to destroy their tokens as well as the tokens in their allowance.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">ERC20Burnable contract</a>.

### Pausable

With the "Pausable" contract module (line 6 and 9) the owner is able to pause (line 14) and unpause (line 18) the contract. In the pause state, tokens can't be transferred, which can be helpful in emergency scenarios.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">Pausable contract</a>.

Have a look at the OpenZeppelins <a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>, which allows you to easily add additional functionality.

If you successfully completed this course, try the Learneth NFT Course as the next step in your journey.

## ⭐️ Assignment

1. Try to mint tokens to an account after deployment. Call `totalSupply()` and `balanceOf()` to confirm the correct execution.
2. Burn tokens and then call `totalSupply()` and `balanceOf()` to confirm the correct execution.
3. Test the pause function by pausing the contract using the owner account and trying to make a transfer with a second account. The transaction should not be able to be executed and will throw the exception: "Pausable: paused".
