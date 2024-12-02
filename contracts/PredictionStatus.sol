// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PredictionStatus {
    mapping(string => string) private predictionStatuses;

    event PredictionUpdated(string indexed id, string status);

    function setPredictionStatus(string memory id, string memory status) public {
        require(
            keccak256(abi.encodePacked(status)) == keccak256(abi.encodePacked("Fake")) || 
            keccak256(abi.encodePacked(status)) == keccak256(abi.encodePacked("Real")), 
            "Status must be 'Fake' or 'Real'"
        );
        predictionStatuses[id] = status;
        emit PredictionUpdated(id, status);
    }

    function getPredictionStatus(string memory id) public view returns (string memory) {
        require(predictionExists(id), "Prediction ID does not exist.");
        return predictionStatuses[id];
    }

    function predictionExists(string memory id) public view returns (bool) {
        bytes memory status = bytes(predictionStatuses[id]);
        return status.length > 0;
    }
}
