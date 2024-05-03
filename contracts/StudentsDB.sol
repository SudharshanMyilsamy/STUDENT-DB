// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDatabase {
    struct Student {
        uint id;
        string name;
        string course;
        uint age;
    }

    mapping(uint => Student) public students;
    uint public studentCount;

    constructor() {
        studentCount = 0;
    }

    function createStudent(string memory _name, string memory _course, uint _age) public {
        studentCount++;
        students[studentCount] = Student(studentCount, _name, _course, _age);
    }

    function getStudent(uint _id) public view returns (uint, string memory, string memory, uint) {
        return (students[_id].id, students[_id].name, students[_id].course, students[_id].age);
    }
}