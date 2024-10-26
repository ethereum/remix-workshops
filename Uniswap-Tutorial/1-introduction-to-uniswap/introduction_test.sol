// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "remix_tests.sol";
import "./introduction.sol";

contract UniswapTutorialTest {
    UniswapTutorial tutorial;

    function beforeEach() public {
        tutorial = new UniswapTutorial();
    }

    function checkQuestion1() public returns (bool) {
        return Assert.equal(tutorial.question1(), 3, "Answer to question 1 is not correct");
    }

    function checkQuestion2() public returns (bool) {
        return Assert.equal(tutorial.question2(), 1, "Answer to question 2 is not correct");
    }
}
