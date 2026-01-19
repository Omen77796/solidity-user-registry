// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Practica {
    struct User {
        string nombre;
        uint edad;
        bool activo;
    }

    uint counter;
    mapping(uint => User) public users;

    event UserCreated(uint id, string nombre);

    function createUser(string memory _nombre, uint _edad) public {
        require(_edad > 0, "La edad debe ser mayor a 0");
        require(bytes(_nombre).length > 0, "Nombre vacio");

        users[counter] = User(_nombre, _edad, true);
        emit UserCreated(counter, _nombre);
        counter++;
    }
}

