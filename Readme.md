# Solidity Storage Factory 🏭

This repository contains my smart contracts built during **Lesson 2 & Lesson 3** of Patrick Collins' Cyfrin Updraft Course. It demonstrates core Solidity architecture patterns, deployment mechanics, and advanced object-oriented programming in Web3.

## Key Concepts Implemented
- **Factory Pattern:** Deploying child smart contracts (`SimpleStorage`) dynamically from a master contract (`StorageFactory`).
- **Inter-Contract Interaction:** Calling external contract functions via ABI and address arrays.
- **Inheritance & Polymorphism:** Extending base contract logic using `is`, `virtual`, and `override` keywords in `ExtraStorage`.
- **Data Structures:** Efficient lookups using Solidity `mappings`, `structs`, and dynamic arrays.

## Tech Stack
- **Language:** Solidity (^0.8.18)
- **Environment:** Remix IDE / EVM Sandbox
