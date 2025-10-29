# 🎰 Transparent Lottery Smart Contract

A beginner-friendly **Solidity project** demonstrating how to create a **decentralized, transparent lottery system** on the blockchain.  
Built with simplicity and clarity in mind, this project shows how smart contracts can automate trust and fairness — no intermediaries required.

<img width="1801" height="915" alt="Screenshot 2025-10-29 135212" src="https://github.com/user-attachments/assets/5794b990-1929-4f3c-986d-afe1b35f9a70" />


## 🧩 Project Description

The **Transparent Lottery** is a blockchain-based lottery system that ensures **complete fairness and visibility**.  
Anyone can enter the lottery by sending a small amount of cryptocurrency, and the manager (the deployer of the contract) can randomly select a winner.  
All transactions, entries, and results are publicly visible on-chain, ensuring **zero manipulation** and **full transparency**.

---

## 🚀 What It Does

1. **Accepts Lottery Entries:**  
   Users can participate by sending at least `0.01 ETH` using the `enter()` function.

2. **Stores Participants On-Chain:**  
   Each participant’s wallet address is saved securely in an array of players.

3. **Selects a Random Winner:**  
   The contract uses on-chain block data to generate a pseudo-random number and selects a winner.

4. **Transfers All Funds to the Winner:**  
   The chosen winner receives the entire Ether balance stored in the contract.

5. **Resets for a New Round:**  
   After payout, the player list resets for the next lottery round.

---

## 🌟 Features

- **Fully Transparent:**  
  Every entry and transaction is visible on the blockchain.  

- **Fair & Autonomous:**  
  No central authority — winner selection is automated by smart contract logic.  

- **Beginner-Friendly Code:**  
  Simple Solidity structure to help new developers understand contract flow.  

- **Secure Access Control:**  
  Only the manager (contract creator) can pick a winner.  

- **Upgradeable Design:**  
  Can be easily extended with Chainlink VRF, UI frontend, or round-based logic.

---



🌐 Deployed Smart Contract

Network: Celo (Testnet)
Contract Address: 0xCA6140EC583a65B068db9f5EC18A0946f1125C22
View on Block Explorer: Celo Blockscout Explorer
