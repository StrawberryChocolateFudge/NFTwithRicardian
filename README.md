### NFT with a Ricardian Contract

This is an example to explain how to use an NFT with a Ricardian contract that is deployed from ricardian fabric.

The contracts/MyCollectible.sol file shows the most simple method, without using access control.

The example uses 2 dependencies, the NFT contract is created with @openzeppelin/contracts,
the ricardian is added via @ricardianfabric/simpleterms.

All it takes to add a ricardian to an NFT is to inherit the simple terms.

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

Permaweb link for the app:

    https://arweave.net/1_Kcw38DOgUsp911JNYjbj2VfoOaeUO3lQ5gfQJ6rRI

To connect the ricardian contract to the smart contract paste the address of the NFT contract to the **Smart Contract** field, add your terms and click **create**.

**Make sure metamask is connected to the correct network**

Your terms should contain the explanation of the NFT and the rights of its holders.

#### Pinning the contract

IPFS content is not permanent, in 1 or 2 days it will get garbage collected and deleted if it's not pinned.
You can pin forever on arweave, in ricardian fabric, after that the ricardian contracts will be available on ipfs indefinitely.

## Creating asset referenced tokens

If you want to create real estate NFT-s for example, they are asset referenced tokens.

For that to work, there are a few things needed:

The deployer needs to have a legal proof of ownership of the assets.

He doesn't need to publish the proof for everybody to see, if it contains sensitive information, all he needs to do is include a public contact address (email) where he can be contacted and put it in the ricardian contract.
