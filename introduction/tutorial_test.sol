// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "remix_tests.sol";
import "./tutorial.sol";
import "./tutorial_answer.sol";

contract MultisigTutorialTest {
    MultisigTutorial tutorial;

    function beforeEach() public {
        tutorial = new MultisigTutorial();
    }

    function checkQuestion1() public returns (bool) {
        return Assert.equal(tutorial.question1(), 2, "Answer to question 1 is not correct");
    }

    function checkQuestion2() public returns (bool) {
        return Assert.equal(tutorial.question2(), 2, "Answer to question 2 is not correct");
    }
}
