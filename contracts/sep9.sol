// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract arrays{
    uint[6] data;
    function myFun() public returns (int[5] memory, uint[6] memory){
        int[5] memory dat = [int(50), 63, -70, 80, 20];
        data = [1,2,3,4,5,6];
        return (dat, data);
    }

}


contract darrays{
    uint[] arr1 = [1,2,3,4];
    int[] arr2;

    function myFun() public returns (int, int[] memory, uint[] memory){
        arr2 = [int(1),2,3,4,5,6,6];
        arr1.push(2);
        arr1.push(5);
        return (arr2[2], arr2, arr1);
    }
}