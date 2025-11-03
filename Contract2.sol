// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract local {

    struct Life {
        string name;
        uint age;
        string career;
        string[] friends;
        string[] love;
        string[] sideChick;
    }

    mapping(address => Life) public lives;
    uint public totalLives;

    // Modifier: Check if life exists
    modifier onlyAlive() {
        require(bytes(lives[msg.sender].name).length != 0, "Bro, pehle janam toh le.");
        _;
    }

     function born(string memory _name) public payable  {
        require(bytes(lives[msg.sender].name).length == 0, "Bro, you already have a life.");
        require(msg.value >= 0.001 ether, "Bhai, zindagi paison se chalti hai. ~ Need at least 0.001 ETH for future.");

        Life storage newLife = lives[msg.sender];
        newLife.name = _name;
        newLife.age = 0;

        totalLives++;
    }

    function addLove(string memory _love) public onlyAlive {
        lives[msg.sender].love.push(_love);
    }

    function setCareer(string memory _career) public onlyAlive {
        lives[msg.sender].career = _career;
    }

    function addSideChick(string memory _sideChick) public onlyAlive{
        lives[msg.sender].sideChick.push(_sideChick);
    }

    function addFriend(string memory _friend) public onlyAlive{
    lives[msg.sender].friends.push(_friend);
}
function birthday() public onlyAlive returns (string memory quote) {
    lives[msg.sender].age += 1;
    return string.concat(" Happy Birthday ", lives[msg.sender].name, "!");
}

function removeSideChick() public onlyAlive{
    if(lives[msg.sender].sideChick.length > 0){
        lives[msg.sender].sideChick.pop();
    }
}

    function getLife() public view onlyAlive returns (Life memory life) {
        return lives[msg.sender];
    }
}
