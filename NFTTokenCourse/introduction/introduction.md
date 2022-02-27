En esta sección del curso, introduciremos los tokens basados en blockchain de una manera técnica. 

Los tokens basados en blockchain son un nuevo bloque de construcción tecnológica creado por la tecnología blockchain (como las páginas web lo fueron para internet) que permiten un internet descentralizado y apropiable (web3).

### Introducción
En el contexto de web3, los tokens representan propiedad. Los tokens representan la propiedad de algo: arte, reputación, elementos de un videojuego, participaciones en una compañía, derechos de voto, o divisas. 

La innovación revolucionaria de la tecnología blockchains la que permite que la data se almacene de manera pública e inmutable (no es posible cambiarlo).
Esta nueva forma de almacenar datos nos permite llevar la cuenta de la propiedad y hace posible poseer entidades digitales por primera vez. 

La tecnología blockchain fue inventada originalmente para llevar la cuenta de la propiedad respecto a Bitcoin, una divisa digital descentralizada y token fungible. 

### Tokens fungible y no-fungible 

Activos como el dinero: Bitcoin o un billete de dollar, por ejemplo, son fungibles. Fungible significa que los activos son de igual valor y por ello son intercambiables. Activos como el arte, coleccionables o productos inmobiliarios son no fungibles; son diferentes entre ellos y por ello no intercambiables.  

Podemos dividir los tokens en dos tipos.: fungibles, en cuanto que los tokens son lo mismo y no fungibles (NFTs), en cuanto a que son únicos. 

### Estándar de los tokens 
El comportamiento de los tokens está especificado en su contrato inteligente (contrato de tokens). El contrato puede, por ejemplo, incluir la funcionalidad para transferir un token o comprobar su abastecimiento total.  

Si todo el mundo crease sus contratos de tokens con diferentes comportamientos y convenciones nominales, sería muy difícil para los usuarios crear contratos y aplicaciones que puedan interactuar las unas con las otras. 
 
La comunidad de Ethereum ha desarrollado estándares de tokens que definen como una desarrolladora puede crear tokens que son interoperables (pueden colaborar entre ellos) con sus contratos, productos y servicios. Los contratos desarrollados siguiendo ese estándar necesitan incluir una serie de funciones y eventos. 

El estándar más popular es el ERC20 para tokens fungibles y el ERC721 para no fungibles.
En este curso aprenderemos cómo crear e interactuar con NFT’s, tokens creados con el estándar ERC721.

Si quiere aprender más sobre los tokens fungibles y el estándar de token ERC20, observer curso de token ERC20 de Learneth.

El ERC777 es un estándar de token fungible, como el ERC20, que incluye características más avanzadas  como hooks, mientras permanece siendo compatible con ERC20. Aprenda más sobre ERC777 en su <a href="https://eips.ethereum.org/EIPS/eip-777" target="_blank">EIP (propuesta de mejora de Ethereum)</a>

El ERC1155 es un estándar multi-token que permite a un solo contrato administrar los diferentes tipos de tokens, como fungibles, no fungibles, o semi fungibles. Aprenda más sobre ERC1155 en su <a href="https://eips.ethereum.org/EIPS/eip-1155" target="_blank">EIP</a>.

## ⭐️ Misión
Para su misión, pondremos a prueba sus conocimientos a través de un breve cuestionario.
Asigne el número de la respuesta más adecuada a las variables `question1` (línea 5), 
`question2` (línea 6), `question3` (línea 7) in the contrato del `Quiz` (línea 4).

### Pregunta 1:
¿Por qué son los tokens basados en blockchain tan revolucionarios?
1. Porque permite hacer inversiones anónimamente. 
2. Porque representa la propiedad de activos digitales que pueden ser poseídos y transferidos. 3. Porque puede usar los tokens para hacer transacciones sin pagar impuestos. 


### Pregunta 2:
¿Por qué ha creado la comunidad los estándares de token?
1. Para que la comunidad pueda controlar y aprobar los tokens que se han creado. 
2. Para restringir la funcionalidad de los tokes a acciones seguras y no maliciosas. 
3. Para que la comunidad pueda crear tokens que sean interoperables con otros contratos, productos y servicios.


### Pregunta 3:
Si tuviera que crear una aplicación descentralizada para un juego de intercambio de cromos de baseball, en el que cada jugador fuera representado por un token, ¿qué estándar de token utilizaría para crear su contrato inteligente?
1. ERC20
2. ERC721