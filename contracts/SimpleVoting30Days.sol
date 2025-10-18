// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleVoting30Days {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    mapping(address => bool) public hasVoted;
    Proposal[] public proposals;
    uint256 public votingEnd;
    address public admin;

    event Voted(address indexed voter, uint256 indexed proposalIndex);

    constructor(string[] memory proposalNames, uint256 _durationMinutes) {
        require(proposalNames.length > 0, "At least one proposal required");
        admin = msg.sender;
        for (uint256 i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({name: proposalNames[i], voteCount: 0}));
        }
        votingEnd = block.timestamp + _durationMinutes * 1 minutes;
    }

    function vote(uint256 proposalIndex) external {
        require(block.timestamp < votingEnd, "Voting has ended");
        require(!hasVoted[msg.sender], "You already voted");
        require(proposalIndex < proposals.length, "Invalid proposal index");

        proposals[proposalIndex].voteCount += 1;
        hasVoted[msg.sender] = true;

        emit Voted(msg.sender, proposalIndex);
    }

    function getProposals() external view returns (Proposal[] memory) {
        return proposals;
    }

    function getWinner() external view returns (string memory winnerName, uint256 votes) {
        uint256 winningVoteCount = 0;
        uint256 winningProposalIndex = 0;

        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }

        winnerName = proposals[winningProposalIndex].name;
        votes = proposals[winningProposalIndex].voteCount;
    }
}
