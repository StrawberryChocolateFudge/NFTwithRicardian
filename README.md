### NFT with a Ricardian Contract

This is an example to explain how to use an NFT with a Ricardian contract that is deployed from ricardian fabric.

The **contracts/MyCollectible.sol** file shows the most simple way to create an NFT with a Ricardian, without using access control or having any custom functions..

The example uses 2 dependencies, the NFT contract is created with [@openzeppelin/contracts](https://www.npmjs.com/package/@openzeppelin/contracts),
the ricardian is added via [@ricardianfabric/simpleterms](https://www.npmjs.com/package/@ricardianfabric/simpleterms).

You can create the NFT and add the functions for the terms using inheritance.

        contract MyCollectible is ERC721, SimpleTerms

To test it locally:

Run:

    yarn install

then:

     npx hardhat node

This will open the local testnet, then open another console:

    npx hardhat run --network localhost scripts/deploy.ts

This will deploy the contract. To deploy on live net, configure hardhat.config.ts and modify the above line

The command line will print the address of the deployed smart contract.

## Attaching the Ricardian contract

navigate to ricardianfabric.com and click on **App** to open the app.

Documentation for the App:
https://docs.ricardianfabric.com


To connect the ricardian contract to the smart contract paste the address of the NFT contract to the **Smart Contract** field, add your terms and click **create**.

**Make sure metamask is connected to the correct network**

Your terms should contain the explanation of the NFT and the rights of its holders.

#### Pinning the contract

IPFS content is not permanent, in 1 or 2 days it will get garbage collected and deleted if it's not pinned.
You can pin forever on arweave, in ricardian fabric, after that the ricardian contracts will be available on ipfs indefinitely.

## Creating asset referenced tokens

If you want to create real estate NFT-s for example, they are asset referenced tokens.

For that to work, there are a few things needed:

1. The deployer needs to have a proof of ownership for the assets.

2. The proof doesn't need to be published, just include contact info in the ricardian contract

3. You need to write down the rights you want to give to the holders who purchase the NFTs.
   Can they visit the house or just own part of it etc..

4. A description of the asset.
