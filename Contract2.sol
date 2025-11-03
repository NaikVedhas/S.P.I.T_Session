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

    function born(string memory _name) public {
        require(bytes(lives[msg.sender].name).length == 0, "Bro, you already have a life.");
        Life storage newLife = lives[msg.sender];
        newLife.name = _name;
        newLife.age = 0;
        totalLives++; // counts new life :)
    }

    function addLove(string memory _love) public {
        lives[msg.sender].love.push(_love);
    }

    function setCareer(string memory _career) public {
        lives[msg.sender].career = _career;
    }

    function addSideChick(string memory _sideChick) public {
        lives[msg.sender].sideChick.push(_sideChick);
    }

    function addFriend(string memory _friend) public {
    lives[msg.sender].friends.push(_friend);
}
function birthday() public returns (string memory quote) {
    lives[msg.sender].age += 1;
    return string.concat(" Happy Birthday ", lives[msg.sender].name, "!");
}

function removeSideChick() public {
    if(lives[msg.sender].sideChick.length > 0){
        lives[msg.sender].sideChick.pop();
    }
}

    function getLife() public view returns (Life memory life) {
        return lives[msg.sender];
    }
}
