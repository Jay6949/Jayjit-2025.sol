// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransparentLottery {
    address public manager;
    address payable[] public players;

    constructor() {
        // whoever deploys the contract becomes manager
        manager = msg.sender;
    }

    // Function to enter the lottery
    function enter() public payable {
        // minimum 0.01 ether to enter
        require(msg.value >= 0.01 ether, "Minimum entry is 0.01 ETH");

        // add the player to the array
        players.push(payable(msg.sender));
    }

    // Internal function to generate a pseudo-random number
    function random() private view returns (uint256) {
        // use block difficulty, timestamp and players as seed
        return uint256(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));
    }

    // Manager picks a winner
    function pickWinner() public {
        require(msg.sender == manager, "Only manager can pick winner");
        require(players.length > 0, "No players yet!");

        uint256 index = random() % players.length;
        address payable winner = players[index];

        // transfer all Ether in contract to the winner
        winner.transfer(address(this).balance);

        // reset the players for next round
        delete players;
    }

    // To see all current players
    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }
}
