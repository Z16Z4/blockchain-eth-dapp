pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;


    struct Task {
        uint id;
        string content;
        bool completed;

    }
    //asynchronous action using:
    //todoList = await TodoList.deployed()
    //wait for this result then assign to variable
    //todoList.taskCount() => 0
    //taskCount = await todoList.taskCount()
    //taskCount.toNumber() => gets as num
    //checks to make everything is setup properly
    mapping(uint => Task) public tasks;
    constructor() public {
        createTask("invest in monero instead");
    }
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}