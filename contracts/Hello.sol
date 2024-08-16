// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Hello {
    uint public x = 5;

    constructor() {
        x = 16;
    }

    function getVal() public view returns(uint){
        uint y = 10;
        y += x;
        return y;
    }


}



contract Base {
    uint public publicVar = 20;
    uint private privateVar = 10;
    uint internal internalVar = 5;
    bool result;
    
    function maths() public view returns(uint, uint, uint, uint, uint){
        uint add = publicVar + privateVar;
        uint sub = publicVar - privateVar;
        uint mul = publicVar - privateVar;
        uint div = publicVar / privateVar;
        uint mod = publicVar % privateVar;

        return (add, sub, mul, div, mod);
    }


    function logic() public view returns(bool, bool, bool, bool){
        bool eq = publicVar == privateVar;
        bool not = publicVar != privateVar;
        bool gt = publicVar > privateVar;
        bool ls = publicVar < privateVar;
        return (eq, not, gt, ls);
    }


}