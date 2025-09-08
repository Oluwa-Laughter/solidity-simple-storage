// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract SimpleStorage {
     // Basic types
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0x99c9347D21E571AA497f4bE993CB26B08aF48744;
    bytes32 favoriteBytes32 = "cat";

    function store(uint256 _favouriteNumber) public  {
        favoriteNumber = _favouriteNumber;
    }
}