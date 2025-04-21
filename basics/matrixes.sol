// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Matrices (2D Arrays) in Solidity
/// @notice Demonstrates usage of 2D arrays (matrices) and operations on them
contract MatricesDemo {

    // 🧱 Fixed-size 2D array (3x3 matrix)
    uint[3][3] public fixedMatrix;

    // 📦 Dynamic-size 2D array (can grow or shrink)
    uint[][] public dynamicMatrix;

    // Set a value in the fixed-size matrix
    function setFixedMatrixValue(uint _row, uint _col, uint _value) public {
        require(_row < 3 && _col < 3, "Invalid row or column");
        fixedMatrix[_row][_col] = _value;
    }

    // Get a value from the fixed-size matrix
    function getFixedMatrixValue(uint _row, uint _col) public view returns (uint) {
        require(_row < 3 && _col < 3, "Invalid row or column");
        return fixedMatrix[_row][_col];
    }

    // Add a new row to the dynamic 2D array
    function addRowToDynamicMatrix(uint[] memory _row) public {
        dynamicMatrix.push(_row);
    }

    // Get a specific row from the dynamic matrix
    function getRowFromDynamicMatrix(uint _row) public view returns (uint[] memory) {
        require(_row < dynamicMatrix.length, "Row out of bounds");
        return dynamicMatrix[_row];
    }

    // Update a specific value in the dynamic matrix
    function updateValueInDynamicMatrix(uint _row, uint _col, uint _value) public {
        require(_row < dynamicMatrix.length, "Row out of bounds");
        require(_col < dynamicMatrix[_row].length, "Column out of bounds");
        dynamicMatrix[_row][_col] = _value;
    }

    // Get the number of rows in the dynamic matrix
    function getDynamicMatrixRows() public view returns (uint) {
        return dynamicMatrix.length;
    }

    // Get the number of columns in a specific row
    function getDynamicMatrixColumns(uint _row) public view returns (uint) {
        require(_row < dynamicMatrix.length, "Row out of bounds");
        return dynamicMatrix[_row].length;
    }
}
