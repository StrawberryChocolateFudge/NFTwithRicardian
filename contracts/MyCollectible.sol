pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@ricardianfabric/simpleterms/contracts/SimpleTerms.sol";

contract MyCollectible is ERC721, SimpleTerms {
    constructor() ERC721("MyCollectible", "MCO") {}
}
