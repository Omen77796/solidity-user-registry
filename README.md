# Solidity User Registry

A simple smart contract written in Solidity to register users on the blockchain.

## Features

- Register users using a struct
- Store users with mapping and auto-increment ID
- Input validation using require
- Emit events when a user is created

## How to Use (Remix IDE)

1. Open Remix IDE at https://remix.ethereum.org
2. Create a new file called `Practica.sol`
3. Copy and paste the smart contract from `contracts/Practica.sol`
4. Compile the contract using Solidity version `0.8.20`
5. Deploy the contract using the Remix VM environment
6. Call `createUser` with a name and age to register a user
7. Use the `users` mapping to read stored users by ID

## Concepts Learned

- Solidity smart contracts
- Structs to store user data
- Mapping for user registry
- Events to notify user creation
- Require statements for validation
- Deploying and testing contracts in Remix IDE
