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


---

## 💰 SimpleWallet Smart Contract

A basic Ethereum wallet written in Solidity that can receive and withdraw ETH securely.

### Features

- Receive ETH using the `receive()` function
- Store ETH inside the contract
- Allow only the owner to withdraw funds
- Display the contract balance
- Emit events when funds are withdrawn

### Contract Logic

- The contract owner is set at deployment using `msg.sender`
- ETH sent to the contract is automatically accepted
- Only the owner can withdraw the full balance
- The balance is read directly from the contract address
- A `Withdraw` event is emitted for transparency

### How to Use (Remix IDE)

1. Open Remix IDE at https://remix.ethereum.org
2. Open `contracts/SimpleWallet.sol`
3. Compile using Solidity version `0.8.20`
4. Deploy the contract using Remix VM
5. Send ETH to the contract using the **Value** field and click **Deploy** or **Transact**
6. Call `getBalance()` to check the wallet balance
7. Call `withdraw()` to send all ETH to the owner account

### Events

- `Withdraw(address to, uint amount)`  
  Emitted when the owner withdraws ETH from the contract

### Concepts Learned

- Payable functions
- Receiving ETH in smart contracts
- Access control using `msg.sender`
- Working with contract balance
- Emitting events
- Basic wallet security patterns
