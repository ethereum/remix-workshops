In this step, we'll set up Remix for Circom development by activating the `Circom ZKP compiler` plugin.

## Activating the Circom ZKP compiler

1. At the bottom of the icon panel on the left of the screen, click on the **Plugin Manager** (the plug icon).
   2.In the search bar, type **Circom**.
2. Find the **Circuit Compiler** plugin in the list and click on the **Activate** button.
3. The plugin will now appear in your sidebar.

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-2/images/install_plugin.png" alt="install-plugin" width=200 height=475>

## The Circom Compiler Interface

- **Compiler Version Dropdown:** Select the Circom compiler version you wish to use.
- **Auto Compile Checkbox:** Enable this to automatically compile your circuit whenever you make changes.
- **Hide Warnings Checkbox:** Enable this to suppress compiler warnings.
- **Advanced Configuration:** Click to expand options for selecting the prime field (e.g., BN128, BLS12381).

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-2/images/compiler_interface.png" alt="compiler-interface" width=300 height=300>

With the plugin installed, you're now ready to start writing Circom code in Remix-IDE.

**Note:** Make sure your internet connection is stable, as Remix-IDE is a web-based tool.

In the next step, we'll write our first Circom circuit.
