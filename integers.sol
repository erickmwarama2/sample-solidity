//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract AllAboutInts {
    uint stateUInt = 20;
    int stateInt = 20;
    bool isPaid = true;
    bytes1 aa = 0x65;
    bytes1 bb = bytes1(uint8(10));
    bytes1 dd = 'a';

    function UIntAssignment(uint incomingValue) public pure returns (uint256) {
        uint memoryuint = 256;
        uint256 memoryuint256 = 256;
        uint8 memoryuint8 = 8;

        uint256 result = memoryuint8 + memoryuint + incomingValue + memoryuint256;
        return result;
    }

    function IntAssignment(int incomingValue) public pure returns (int256) {
        int memoryInt = 256;
        int256 memoryInt256 = 256;
        int8 memoryInt8 = 8;

        int256 result = memoryInt8 + memoryInt256 + memoryInt + incomingValue;
        return result;
    }

    function manageBool() public returns (bool) {
        isPaid = false;
        return isPaid;
    }

    // function convertToUint() public returns (uint8) {
    //     isPaid = false;
    //     return uint8(isPaid);
    // }
}