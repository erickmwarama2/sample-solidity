//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.9;

contract FirstContract {
    int public stateIntVariable;
    string stateStringVariable;
    address personalIdentifier;
    MyStruct human;
    bool constant hasIncome = true;

    struct MyStruct {
        string name;
        uint myAge;
        bool isMarried;
        uint[] bankAccountNumbers;
    }

    modifier onlyBy() {
        if (msg.sender == personalIdentifier) {
            _;
        }
    }

    event ageRead(address, int);

    enum gender {male, female}

    function getAge(address _personalIdentifier) onlyBy() payable external returns (uint) {
        human = MyStruct("Ritesh", 10, true, new uint[](3));

        gender _gender = gender.male;

        emit ageRead(personalIdentifier, stateIntVariable);
    }
}