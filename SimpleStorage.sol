// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract SimpleStorage {
    // Basic types
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 88;
    // string favoriteNumberInText = "eighty-eight";
    // int256 favoriteInt = -88;
    // address myAddress = 0x99c9347D21E571AA497f4bE993CB26B08aF48744;
    // bytes32 favoriteBytes32 = "cat";

    uint256 myFavoriteNumber;

    uint256[] listOfFavouriteNumer;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public hey = Person({favoriteNumber: 8, name:'Tim'});


    Person[] public listOfPeople;

    mapping(string => uint256 ) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public  {
        myFavoriteNumber = _favouriteNumber;
    }

    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person memory newPerson = Person(_favouriteNumber, _name);
        // listOfPeople.push(newPerson);

        listOfPeople.push( Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}