// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        string name;
        uint voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public hasVoted;

    event ProposalCreated(uint id, string name);
    event VoteCast(address voter, uint proposalId);

    constructor(string[] memory proposalNames) {
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({
                name: proposalNames[i],
                voteCount: 0
            }));

            emit ProposalCreated(i, proposalNames[i]);
        }
    }

    function vote(uint proposalId) public {
        require(!hasVoted[msg.sender], "Ya votaste");
        require(proposalId < proposals.length, "Propuesta invalida");

        hasVoted[msg.sender] = true;
        proposals[proposalId].voteCount += 1;

        emit VoteCast(msg.sender, proposalId);
    }

    function getProposalsCount() public view returns (uint) {
        return proposals.length;
    }
}

