# 🎲 TransparentLottery Smart Contract

A **simple, transparent, and fair lottery system** built on the **Celo blockchain** using Solidity.  
This project demonstrates how decentralized applications (dApps) can bring **trustless transparency** to lottery systems — no middlemen, no hidden logic.

<img width="1610" height="775" alt="Screenshot 2025-10-30 003602" src="https://github.com/user-attachments/assets/34130f72-e9ba-47d2-935a-defa4285fc29" />


## 🧩 Project Description

The **TransparentLottery** contract allows users to enter a lottery by sending a small amount of Ether (minimum 0.01 ETH).  
Once enough players have entered, the **manager** (the person who deployed the contract) can call a function to **randomly select a winner**, who automatically receives the entire prize pool.

All interactions are recorded on-chain, making the process fully transparent and verifiable by anyone.

---

## ⚙️ What It Does

1. **Accepts Entries** – Users join the lottery by sending ≥ 0.01 ETH.  
2. **Stores Participants** – Each player's wallet address is stored in a public list.  
3. **Picks Winner Randomly** – The manager triggers a random draw using blockchain parameters.  
4. **Transfers Prize** – The entire contract balance is transferred to the winner.  
5. **Resets Automatically** – After each round, the player list resets for a new game.

---

## 🌟 Features

- **Decentralized Fairness:** The winner is chosen using blockchain data — not controlled by any single person.  
- **Transparency:** Anyone can view the contract, current players, and balance on-chain.  
- **Security:** Only the manager can pick a winner; funds are automatically transferred on-chain.  
- **Gas Efficient:** Optimized functions for minimal transaction cost.  
- **Educational:** Great example for beginners learning Solidity, randomness, and Celo smart contracts.

---

## 🔗 Deployed Contract

**Network:** Celo (Testnet: Celo-Sepolia)  
**Contract Address:** [`0xCA6140EC583a65B068db9f5EC18A0946f1125C22`](https://celo-sepolia.blockscout.com/address/0xCA6140EC583a65B068db9f5EC18A0946f1125C22)

You can explore transactions, players, and balance using the above Blockscout link.

---

## 🚀 How to Use

1. **Connect to the Celo Testnet** (e.g., via MetaMask).  
2. **Send ≥ 0.01 ETH** to enter the lottery using the `enter()` function.  
3. **Wait for the manager** to call `pickWinner()`.  
4. **Winner receives all funds** instantly and a new round begins!

---

