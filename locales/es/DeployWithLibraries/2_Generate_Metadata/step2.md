## Desplegando la Biblioteca

La **biblioteca** del capítulo anterior se encontraba en el mismo archivo que el **contrato**. Sin embargo, no serán desplegadas juntas y tendrán direcciones diferentes.

Para poder utilizar una biblioteca, el contrato de llamada debe tener la **dirección** de la biblioteca.

Pero la dirección de la biblioteca no se especifica directamente en el código de solidity. El bytecode compilado del contrato de llamada contiene un **marcador de posición** donde irán las **direcciones** de la biblioteca.

Durante el despliegue el **contrato de llamada**, Remix buscará en los **metadatos** del contrato la dirección de la biblioteca y actualizará el marcador de posición con la dirección.

Así que antes de desplegar un contrato que llama una biblioteca, necesitas generar los metadatos del contrato (también conocido como su **artefacto de construcción**) y entonces necesitas introducir la dirección de la biblioteca en el archivo de metadatos.

Los metadatos de un contrato se generan en el **tiempo de compilación**.

Vamos a configurar Remix para generar el **archivo de metadatos**.

- ¡Ve al módulo de configuración haciendo clic en la configuración![settings](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/settings.png "Settings" icon) en el panel del icono.

![settings module](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_settings.png "Settings Module")

- Y marca la primera opción `Generate contract metadata`.

# Compila y genera metadatos (JSON).

1. Abre el Compilador de Solidity ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_icon_solidity.png "Solidity Compiler")

2. Compila `2_contractSimpleLibrary.sol`.

3. Cambia al Explorador de Archivos ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_file_explorer.png "File Explorer")

4. Navega hasta los archivos JSON recién creados.
   - Debería estar en la carpeta:

**browser/.learneth/DeployWithLibraries/2_Generate_Metadata/artifact/**

5. Selecciona el nuevo archivo JSON creado del contrato.  Tiene el **mismo nombre** que el contrato `sample` pero con la extensión **json**: `sample.json` (no seleccione el metadato de la librería `contractSimpleLibrary.json`).

En el siguiente paso haremos algunos ajustes en el archivo de metadatos.
