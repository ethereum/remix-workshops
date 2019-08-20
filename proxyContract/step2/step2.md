# How it works?

All message calls from the user go through a so called Proxy contract. The Proxy contract then will redirect them to the Logic contract. When you need to upgrade the logic you need to deploy the new version of your Logic contract and the logic of Proxy will rename the same.
For this the Proxy Contract uses Delegate calls. Let's see how it works.