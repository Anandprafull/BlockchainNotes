// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";

contract ERC6551MovieNFT is ERC721("My NFT", "MNFT") {

    // Mapping of movie NFTs to their corresponding review NFTs
    mapping (address => address) public movieNFTToReviewNFT;

    // Event emitted when a review NFT is linked to a movie NFT
    event ReviewNFTLinked(address indexed movieNFT, address indexed reviewNFT);

    // Function to link a review NFT to a movie NFT
    function linkReviewNFT(address movieNFT, address reviewNFT) public {
        // Link the review NFT to the movie NFT in the mapping
        movieNFTToReviewNFT[movieNFT] = reviewNFT;
        emit ReviewNFTLinked(movieNFT, reviewNFT);
    }

    // Function to get the review NFT linked to a movie NFT
    function getReviewNFT(address movieNFT) public view returns (address) {
        return movieNFTToReviewNFT[movieNFT];
    }
}

