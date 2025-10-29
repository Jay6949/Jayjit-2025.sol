# 🎰 Transparent Lottery Smart Contract

A simple, beginner-friendly **Solidity smart contract** that demonstrates how to build a **transparent and fair lottery system** on the blockchain.  
Deployed on the **Celo Sepolia Testnet**, this project showcases the power of decentralization — where every entry, rule, and payout is visible to everyone.

<img width="1610" height="775" alt="Screenshot 2025-10-30 003602" src="https://github.com/user-attachments/assets/a4e6c8c6-d222-4e76-b550-a11e2f6cf62c" />



## 🧩 Project Description

The **Transparent Lottery** is a decentralized lottery where users can participate by sending a small amount of Ether (or Celo).  
Once enough players have joined, the **manager** — who deployed the contract — can trigger the lottery and pick a **random winner**.  

The winner automatically receives **all the Ether collected in the contract**, and the lottery resets for the next round.  

Every action is **recorded on-chain**, making it tamper-proof, auditable, and transparent.

---

## 🚀 What It Does

1. **Allows Players to Enter:**  
   Anyone can join the lottery by sending at least **0.01 ETH** to the contract.

2. **Stores Participants on the Blockchain:**  
   All players’ addresses are stored in a public array for transparency.

3. **Selects a Random Winner:**  
   The contract uses on-chain data (block timestamp, difficulty, etc.) to pick a pseudo-random winner.

4. **Transfers the Prize Automatically:**  
   Once the winner is chosen, the contract sends them the entire prize pool.

5. **Resets for the Next Round:**  
   After the draw, the player list resets — ready for a new lottery round.

---

## 🌟 Features

- 🔍 **100% Transparent:**  
  Every transaction and participant is visible on the blockchain explorer.

- ⚡ **Automatic Payout:**  
  The prize is transferred directly to the winner’s wallet — no intermediaries.

- 👨‍💼 **Manager-Controlled Draw:**  
  Only the contract deployer (manager) can initiate the winner selection.

- 🧮 **On-Chain Randomness (Demo):**  
  Uses `keccak256()` hashing with block data to pick a pseudo-random winner.

- 💻 **Beginner-Friendly Solidity Code:**  
  Clean, well-commented, and perfect for learning how smart contracts work.

---



🌐 Deployed Smart Contract

Network: Celo Sepolia Testnet
Contract Address: 0xCA6140EC583a65B068db9f5EC18A0946f1125C22

Explorer: View on Celo Blockscout
