// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Modify {

    uint private a = 5;
    int internal b = -3;
    string internal c = "Hello World";
    bool private  d = true;

    function getA() external view returns(uint){
        return a;
    }

    function getB() public  view returns (int){
        return b;
    }

    function getC() public  view returns (string memory){
        return c;
    }

    function getD() external  view returns (bool){
        return d;
    }

    function setA(uint x) external {
        a = x;
    }
    function setB(int x) external {
        b = x;
    }
    function setC(string calldata x) external {
        c = x;
    }
    function setD(bool x) external {
        d = x;
    }

}

contract Derived is Modify {
    function modC(string calldata data) external {
        c = data;
    }


}

