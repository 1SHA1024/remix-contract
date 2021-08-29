// SPDX-License-Identifier: GPL-3.0 => Remix IDE

pragma solidity >=0.5.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../IsraelPeled.sol";



contract MyTest {
    IsraelPeled me;
    
    function beforeEach() public {
        me = new IsraelPeled();
    }
    
    function initialValueShouldBe() public returns (bool) {
        return Assert.equal(me.name(), "Israel Peled", "initial value is not correct");
      }
     
    function acceptedToWork() public returns (bool) {
        bool first =  Assert.equal(me.work(), "Surviving", "initial value is not correct");
        // accept work
        me.setWork("NFTrade");
        bool second = Assert.equal(me.work(), "NFTrade", "did not accept");
        return first && second;
    }
}