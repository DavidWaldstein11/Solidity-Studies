// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Control Flow Basics in Solidity
/// @notice Demonstrates if, else if, else, and ternary operator usage
contract ControlFlowDemo {

    /*
     * if / else:
     * Basic conditional structure.
     * Useful when you want to execute code only when a condition is true,
     * and optionally something else when it's not.
     */
    function checkEvenOdd(uint _number) public pure returns (string memory) {
        if (_number % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }

    /*
     * if / else if / else:
     * Used when there are multiple possible conditions to check.
     * Solidity checks from top to bottom and stops at the first true condition.
     */
    function gradeStatus(uint score) public pure returns (string memory) {
        if (score >= 90) {
            return "Excellent";
        } else if (score >= 75) {
            return "Good";
        } else if (score >= 50) {
            return "Pass";
        } else {
            return "Fail";
        }
    }

    /*
     * Ternary Operator (condition ? valueIfTrue : valueIfFalse):
     * A compact alternative to a simple if/else.
     * Best used when the condition and return values are short.
     */
    function checkEvenOddTernary(uint _number) public pure returns (string memory) {
        return (_number % 2 == 0) ? "Even" : "Odd";
    }

    /*
     * Example: Get the minimum of two numbers using the ternary operator.
     */
    function min(uint a, uint b) public pure returns (uint) {
        return (a < b) ? a : b;
    }

    /*
     * Example: Use ternary with a boolean check.
     */
    function isPositive(int number) public pure returns (string memory) {
        return (number >= 0) ? "Non-negative" : "Negative";
    }
}
