// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;



contract LearningString {

    enum week_days {Monday, Tuesday, Wednesday}

    week_days week;
    week_days choice;

    week_days constant default_value = week_days.Tuesday;

    function set_val() public {
        choice = week_days.Monday;
    }

    function get_choice() public view returns (week_days){
        return  choice;
    }

    function getLength(string memory s) public pure returns (uint256){
        bytes memory b = bytes(s);
        return b.length;
    }


}


contract Fruits{
    enum fruit_list {Apple, Mango, Banana}

    fruit_list basket;

    fruit_list constant public  default_value = fruit_list.Mango;

    function get_basket() public view returns (fruit_list){
        return basket;
    }

    function change_basket() public  {
        basket = fruit_list.Banana;
    }
}


contract Student{
    struct stud{
        string name;
        uint id;
        uint[5] marks;
    }


    stud s1;
    stud s2 = stud("Vedant", 22566, [uint(1),2,3,4,5]);


    function getStudent1() public  view returns (string memory, uint, uint[5] memory){
        return (s1.name, s1.id, s1.marks);
    }

    function setStudent1(string memory sname, uint sid, uint[5] memory mks) public {
        s1.name = sname;
        s1.id = sid;
        s1.marks = mks;
    }

    function getStudent2() public  view returns (string memory, uint, uint[5] memory){
        return (s2.name, s2.id, s2.marks);
    }

    function setStudent2(string memory sname, uint sid, uint[5] memory mks) public {
        s2.name = sname;
        s2.id = sid;
        s2.marks = mks;
    }

    


}



contract MyMapping{

    mapping (uint => uint[5]) stud_marks;

    function set_marks(uint id, uint[5] memory marks) public {
        stud_marks[id] = marks;
    }

    function get_perc(uint id) public view returns (uint){
        uint[5] memory marks = stud_marks[id];
        uint sum = 0;
        for (uint i = 0; i<marks.length; i++){
            sum += marks[i];
        }

        return sum/5;
    }
} 