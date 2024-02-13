// SPDX-Licence-Identifier: MIT 
pragma solidity ^0.8.9;

contract Todo{
    struct Task{
        uint public id;
        string public title;
        string public description;
        bool public isDone;
    }

    Task[] public todos;

    function getById(uint id) external returns(todos){
        return todos.filter((_id) => id == _id);
    }

    function create(string memory _title, string memory _description) external returns(todos){
        uint id = todos.length;
        todos.push(Task(id, _title, _description, false));
    }

    function delete(Task _task.id memory) external returns(todos){
        // uint _todoIndex = getById(_task.id).indexOf;
        // todos.splice(_todoIndex, 1);
        // return todos;

        require(_id < todos.length, "Task does not exist");
        if (_id < todos.length - 1) {
            todos[_id] = todos[todos.length - 1];
        }
        todos.pop();
        return todos;
    }

    function update(uint _id,  string memory _title, string memory _description) external returns(todos){
        require(_id < todos.length, "Task does not exist");
        todos[_id].title = _title;
        todos[_id].description = _description;
        return todos;
    }

    function toggleIsDone(uint _id) external returns(todos){
        require(_id < todos.length, "Task does not exist");
        todos[_id].isDone = !todos[_id].isDone;
        return todos;
    }


}