# 🎰 Transparent Lottery Smart Contract

A beginner-friendly **Ethereum-based lottery DApp** built using **Solidity**.  
This project demonstrates how blockchain can create a **fair and transparent lottery** system — where every entry, rule, and transaction is publicly verifiable on-chain.

---
<img width="1801" height="915" alt="Screenshot 2025-10-29 135212" src="https://github.com/user-attachments/assets/c163915d-dfa9-49dc-93bd-5fe652763fbc" />

## 🧩 Project Description

The **Transparent Lottery** smart contract allows users to join a lottery by sending a small amount of cryptocurrency (minimum **0.01 ETH**).  
Once enough participants have joined, the **manager** (the contract deployer) can pick a **random winner**, who receives the **entire balance** of the contract.  

All entries and results are stored **transparently on the blockchain**, ensuring fairness and public auditability.

---

## 🚀 What It Does

1. **Accepts Entries:**  
   Users can participate by sending at least `0.01 ETH` via the `enter()` function.

2. **Stores Participants:**  
   Each participant’s address is stored securely in an on-chain array `players[]`.

3. **Picks a Random Winner:**  
   The contract manager can trigger the `pickWinner()` function,  
   which selects a random player and transfers **all Ether in the contract** to them.

4. **Resets Automatically:**  
   Once a winner is picked, the list of players resets for the next round.

---

## 🌟 Features

- **Transparent & Fair:**  
  Every entry, winner, and transaction is publicly visible on the blockchain.

- **Beginner-Friendly Code:**  
  Simple and readable Solidity structure — great for learning how Ethereum smart contracts work.

- **Secure Access Control:**  
  Only the contract deployer (manager) can pick a winner.

- **On-Chain Randomness (Demo):**  
  Uses block data (`timestamp`, `prevrandao`) to generate a pseudo-random winner  
  *(for production, you can upgrade to Chainlink VRF for true randomness)*.

---

## 🧠 Smart Contract Overview

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransparentLottery {
    address public manager;
    address payable[] public players;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value >= 0.01 ether, "Minimum entry is 0.01 ETH");
        players.push(payable(msg.sender));
    }

    function random() private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));
    }

    function pickWinner() public {
        require(msg.sender == manager, "Only manager can pick winner");
        require(players.length > 0, "No players yet!");
        uint256 index = random() % players.length;
        address payable winner = players[index];
        winner.transfer(address(this).balance);
        delete players;
    }

    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }
}
