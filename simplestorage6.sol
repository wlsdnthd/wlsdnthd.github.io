pragma solidity ^0.4.0;



contract SimpleStorage {

   mapping (address => string) Name;
   mapping (address => uint) Age;

   function set(string _name, uint _age) public {
       Name[msg.sender] = _name;
       Age[msg.sender] = _age;
   }

   function getInstructor() public constant returns (string, uint) {
       return (Name[msg.sender], Age[msg.sender]);
   }

}
