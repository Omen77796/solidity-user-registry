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


---

## 🗳️ Voting Smart Contract

A simple decentralized voting system written in Solidity.

### Features

- Create proposals at deployment
- One vote per address
- Owner-controlled voting lifecycle
- Prevent voting when closed
- Emit events for transparency

### Contract Logic

- The contract owner is set at deployment using `msg.sender`
- Proposals are stored in an array
- Votes are tracked using a mapping to prevent double voting
- The owner can close the voting process

### How to Use (Remix IDE)

1. Open Remix IDE at https://remix.ethereum.org
2. Open `contracts/Voting.sol`
3. Compile using Solidity version `0.8.20`
4. Deploy using Remix VM
5. Pass proposal names as an array:
6. Call `vote(proposalId)` to vote
7. Call `closeVoting()` to close the voting (owner only)
