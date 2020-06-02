pragma solidity ^0.6.8;

contract RpcWithStorageTest {
    uint256[] data;

    event RpcEvent(
        uint _someNumber
    );

    function get(uint256 _someId) public returns (uint256) {
        return data[_someId];
    }

    function const() public returns (uint256) {
        return 1;
    }

    function waste_storage(uint256 iterations) public {
        uint256 i;
        for (i=0; i<iterations; i++) {
            data.push(i);
        }
        emit RpcEvent(i);
    }
}
