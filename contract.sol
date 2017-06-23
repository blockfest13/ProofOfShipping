pragma solidity ^0.4.11;

contract ProofOfShipping {
    struct Coli {
        bytes32 name;   // short name (up to 32 bytes)
        uint quantity;
        uint shipment_delay;
        string[4] actions;
    }

    Coli[] public Colis ;

    function addColi (bytes32 _name, uint _quantity, uint _shipment_delay) {
         string[4] memory actions = ["init", "", "", ""];
        Colis.push(Coli(_name, _quantity, _shipment_delay, actions));
    }

    function signeColi (uint _index, string _action ){
        string[4] memory new_actions;
        new_actions = Colis[_index].actions;
        Colis[_index].actions[1] = _action;
    }

    function getColiAction (uint _index, uint _indexAction) returns (string){
        return Colis[_index].actions[_indexAction];
    }
}
