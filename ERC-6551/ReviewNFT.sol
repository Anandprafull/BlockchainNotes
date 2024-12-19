// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";

contract ERC6551ReviewNFT is ERC721("My NFT", "CNFT") {
    // Mapping of review NFTs to their corresponding movie NFTs
    mapping (address => address) public reviewNFTToMovieNFT;

    // Event emitted when a review NFT is created
    event ReviewNFTCreated(address indexed reviewNFT);

    // Factory function to create a new review NFT
    function createReviewNFTFactory(address movieNFT) internal returns (address) {
        // Create a new review NFT instance
        return address();
    }
    

    // Function to create a new review NFT
    function createReviewNFT(address movieNFT) public {
        // Create a new review NFT instance
        address reviewNFT = createReviewNFTFactory(movieNFT);
        reviewNFTToMovieNFT[reviewNFT] = movieNFT;
        emit ReviewNFTCreated(reviewNFT);
    }

    // Function to get the movie NFT linked to a review NFT
    function getMovieNFT(address reviewNFT) public view returns (address) {
        return reviewNFTToMovieNFT[reviewNFT];
    }
}
