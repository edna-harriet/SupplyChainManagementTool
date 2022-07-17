pragma solidity ^ 0.8.7;
import 'foodsupply.sol';

contract FoodTraceability{
    string id;

    function setId(string serial) public{
        id = serial; 
    }

    function getId() public view returns(string memory){
        return id;
    }

struct Food {
    string name;
    string description;
    string manufacturer;
    bool initialized;
}
mapping(string => Asset) private assetStore;
 //foodStore[uuid]=> Food(name, description, true, manufacturer);
mapping(address => mapping(string => bool)) private wallet;

//walletStore[_msg.sender][_uuid] = true;

event FoodCreate(address account, string uuid, string manufacturer);
event RejectCreate(address account, string uuid, string message);
event FoodTransfer(address from, string uuid);
event RejectTransfer(address from, string uuid, string message);

function createFood(string name, string description, string manufacturer) {

    if(foodStore[uuid])(initialized); {
        RejectCreate(msg.sender, uuid, "Food with this UUID already created")
    ;}

    foodStore[uuid] = Food(name, description, true)
    //walletStore [msg.sender] [uuid] = true;
    FoodCreate[msg.sender, uuid, manufacturer];

}

