// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/utils/Strings.sol";

contract Lab6_NFT is ERC721Enumerable, Ownable {
    //using Strings for uint256;

    string private _baseTokenURI;

    constructor() ERC721("Lab6_NFT", "Kire") {
        setBaseURI("https://cyan-definite-vulture-654.mypinata.cloud/ipfs/QmcK64Z6NHrWnsGFbY6vBQTaCs3A1Tq51SCJ5rW5oMnCax/");
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        return string(abi.encodePacked(_baseTokenURI, Strings.toString(_tokenId)));
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return _baseTokenURI;
    }

    function mint() public {
        uint256 totalSupply = totalSupply();
        _safeMint(msg.sender, totalSupply + 1);
    }

    function mintMultiple(uint256 _amount) public {
        uint256 totalSupply = totalSupply();
        for (uint256 i = 0; i < _amount; i++) {
            _safeMint(msg.sender, totalSupply + i + 1);
        }
    }
    //function mintMultiple(uint256[] memory tokenIds) public {
    //    for (uint256 i = 0; i < tokenIds.length; i++) {
    //        _safeMint(msg.sender, tokenIds[i]);
    //    }
    //}
}
