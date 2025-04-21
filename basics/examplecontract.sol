// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint public myNumber;
    string public myText;

    function setMyNumber(uint _number) public {
        myNumber = _number;
    }

    function setMyText(string memory _text) public {
        myText = _text;
    }
}
