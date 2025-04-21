// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Operators Demo in Solidity
/// @notice Demonstrates arithmetic, comparison, and logical operators
contract OperatorsDemo {

    // 🔢 Arithmetic Operators
    function arithmeticOps(uint a, uint b) public pure returns (uint sum, uint diff, uint prod, uint quot, uint rem) {
        require(b != 0, "Division by zero not allowed");
        sum = a + b;
        diff = a - b;
        prod = a * b;
        quot = a / b;
        rem = a % b;
    }

    // 🧮 Comparison Operators
    function compare(uint a, uint b) public pure returns (
        bool isEqual,
        bool notEqual,
        bool lessThan,
        bool greaterThan,
        bool lessOrEqual,
        bool greaterOrEqual
    ) {
        isEqual = a == b;
        notEqual = a != b;
        lessThan = a < b;
        greaterThan = a > b;
        lessOrEqual = a <= b;
        greaterOrEqual = a >= b;
    }

    // 🧠 Logical Operators
    function logicalOps(uint a, uint b) public pure returns (
        bool andLogic,
        bool orLogic,
        bool notEqualLogic
    ) {
        andLogic = (a > 5 && b < 10);
        orLogic = (a > 5 || b < 10);
        notEqualLogic = !(a == b);
    }
}
