// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract local {

// College Name
string public collegeName;

// Struct
struct Student {
    string name;
    string year;
    uint cpi;                
    string[] skills;         
    bool isRegistered;
}

// Mapping: address → Student
mapping(address => Student) public students;

// Constructor
constructor(string memory _collegeName) {
    collegeName = _collegeName;
}

// Register Student (only once)
function registerStudent(
    string memory _name, 
    string memory _year, 
    uint _cpi
) 
    public 
{
    require(!students[msg.sender].isRegistered, "You are already registered!");

    Student storage newStudent = students[msg.sender];
    newStudent.name = _name;
    newStudent.year = _year;
    newStudent.cpi = _cpi;
    newStudent.isRegistered = true;
}

// Update CPI (your own only)
function updateCPI(uint _newCPI) public {
    require(students[msg.sender].isRegistered, "You are not registered!");
    students[msg.sender].cpi = _newCPI;
}

// Add a new skill
function addSkill(string memory _skill) public {
    require(students[msg.sender].isRegistered, "You are not registered!");
    students[msg.sender].skills.push(_skill);
}

// Fetch student info
function getStudent(address _studentAddress)
    public 
    view 
    returns (
        string memory name,
        string memory year,
        uint cpi,
        string[] memory skills
    ) 
{
    require(students[_studentAddress].isRegistered, "Student not found!");

    Student memory s = students[_studentAddress];
    return (s.name, s.year, s.cpi, s.skills);
}

}