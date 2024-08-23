// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Vedant {
    function prime(uint a)pure public returns (bool){
        if (a<2){
            return false;
        }

        for (uint i =2; i<a; i++){
            if (a%i == 0){
                return false;
            } 
        }
        return true;
    }
    

    function bit(uint a, uint b) pure public  returns (uint, uint, uint, uint, uint){
        uint and = a & b;
        uint or = a | b;
        uint xor = a ^ b;
        uint lshift = a << b;
        uint rshift = a >> b;
        return (and, or, xor, lshift, rshift);
    }
}

contract HW{
    string userInput;
    function set(string memory finalValue) public {
        userInput = finalValue;
    }

    function get()public view returns(string memory){
        return userInput;
    }
}