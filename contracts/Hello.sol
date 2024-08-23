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


contract Binary {

    function operations(uint a, uint b) pure public returns (uint, uint, uint, uint, uint, uint){
        uint and = a & b;
        uint or = a | b;
        uint xor = a ^ b;
        uint lshift = a << b;
        uint rshift = a >> b;
        uint not = ~a;

        return (and, or, xor, lshift, rshift, not);
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


    function relation() public view returns(bool, bool, bool, bool){
        bool eq = publicVar == privateVar;
        bool not = publicVar != privateVar;
        bool gt = publicVar > privateVar;
        bool ls = publicVar < privateVar;
        
        return (eq, not, gt, ls);
    }

    function logic() public view returns(bool, bool, bool){
        bool and = publicVar > 5 && privateVar < 10;
        bool or = publicVar > 5  || privateVar < 10;
        bool not = !(publicVar > 5);

        return (and, or, not);
    }



}