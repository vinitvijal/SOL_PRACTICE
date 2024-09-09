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
    uint[] public  arr1 = [1,2,3,4];
    int[] public  arr2;

    function myFun() public returns (int, int[] memory , uint[] memory){
        arr2 = [int(1),2,3,4,5,6,6];
        arr1.push(2);
        arr1.push(5);
        return (arr2[2], arr2, arr1);
    }

    function slice() public view returns (int[5] memory){
        uint k = 0;
        int[5] memory myslice;
        for(uint i = 1; i < 3; i++ ){
            myslice[k] = arr2[i];
            k++;
        }

        return (myslice);
    }
}


contract AddElements {
    int[10] arr1;
    int[10] arr2;

    function add1() public  returns (int[10] memory){
        uint i = 0;
        while (i < 10) {
            arr1[i] = int(i)*2;
            i++;
        }
        return arr1;
    }

    function add2() public returns (int[10] memory){
        uint i = 0;
        do {
            arr2[i] = int(i)*2;
            i++;
        } 
        while (i < 5);
        return arr2;
    }
}



