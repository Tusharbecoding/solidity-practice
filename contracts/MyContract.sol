// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // //State Variables
    // int256 public myInt = 1;
    // uint public myUint = 1;
    // uint256 public myUint256 = 1;
    // uint8 public myUint8 = 1; 

    // string public myString = "Hello World";

    // address public myAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    
    // struct MyStruct {
    //     uint256 myUint256;
    //     string myString;
    // }

    // MyStruct public myStruct = MyStruct(1, "Hello there");

    // //Local Variables
    // function getValue() public pure returns(uint) {
    //     uint value = 1;
    //     return value;
    // }

    //Arrays
    // uint[] public uintArray = [1, 2, 3];
    // string[] public stringArray = ['a', 'b', 'c'];
    // string[] public values;

    // function addValue(string memory _value) public {
    //     values.push(_value); //adds an item at the last position
    // }

    // function valueCount() public view returns(uint) {
    //     return values.length;
    // }

    //Mappings
    // mapping(uint => string) public names;
    // mapping(uint => Book) public books;
    // mapping(address => mapping(uint => Book)) public myBooks;

    // struct Book {
    //     string title;
    //     string author;
    // }

    // constructor() {
    //     names[1] = "Tushar";
    //     names[2] = "Anwesh";
    //     names[3] = "Nandini";
    // }

    // function addBook(uint _id, string memory _title, string memory _author) public {
    //     books[_id] = Book(_title, _author);
    // }

    // function addMyBook(uint _id, string memory _title, string memory _author) public {
    //     myBooks[msg.sender][_id] = Book(_title, _author);
    // }

    //Conditionals
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }


    function isEvenNumber(uint _number) public view returns(bool) {
        if(_number % 2 == 0){
            return true;
        } 
        else {
            return false;
        }
    }





}