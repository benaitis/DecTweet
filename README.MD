# DecTweet - decentralised Twitter
## Decentralized AI Whitepaper for Siraj's Decentralized Apps


This is our final project for [TheSchool.AI](https://www.theschool.ai), a decentralized application course by Siraj Raval.
## Accessing the Dapp
You can acces the dapp on https://ipfs.io/ipfs/QmWXdCEwjBsRJYxkk8MMXafeeUvk5fswo6xSHugBRL978X or simply by forking the project and running command 'http-server' in src directory. Also you need metamask to interact with the dapp.

## Authors
[Benaitis()](https://www.github.com/benaitis)

## Introduction

Almost 2.5 billion people on Earth use social media or some other form of social networking. Account data is controlled only by a few big corporations around the world. Most of the data on these social networks can be tampered with, changed or altered, which changes the meaning of the original post or 'tweet'.

DecTweet is a new generation of social network. It is a completely public decentralised network for all. Anyone with a browser and Ether can register on this network and start posting content to it that is tamper-proof, cannot be changed or altered and is permanent on the Ethereum blockchain. The platform is self-governing and irreplacable, it is live 24/7. 

The biggest problem these days is data loss, which can be compared to book burning in the Medieval times. This problem is fixed by the DecTweet network because data on it is never lost and stored permanently on the Ethereum blockchain.

## DECENTRALIZED SOCIAL NETWORKS

Huge tech companies these days are leading the social networking industry. Facebook, Twitter, LinkedIn (owned by Microsoft), Google+. All these social networks are evidently the same - they let users create posts, interact with other people for free. But there is a spin off. People are paying the price of mutability, security and data ownage so they could use the services of those companies.

Our project's first mission is to let people have a social network where they can simply say what they are thinking or other things while also completely owning the data they post. The whole network agrees and knows which post belongs to whom. Also the data is immutable, meaning it cannot be altered, changed or deleted because it is on a decentralised blockchain called the Ethereum blockchain. The program cannot be shut down by governments or other entities because it is hosted on the InterPlanetaryFileSystem which addresses another issue with these days social networks: that they can be shut down, restricted from watching in certain countries/areas/regions.

Because of these reasons: immutability, data ownage and self-governance (hosted on IPFS) we chose to do this project. And we think it is possible for us to address this issue.

## Technologies used in the project

Our project is built with Solidity (Ethereum) and the Inter-Planetary FileSystem (IPFS).

IPFS is a decentralised and distributed data storage system. Data on the network (IPFS) is addressed by content not by server address (IP), this makes this network fast but also resiliant against government bans and blocks. Websites on IPFS can be hosted by multiple peers which makes it extremely hard for a higher entity to block access to each and one of those peers. Because of this our network can be run 24/7 while there are peers running the server.

Solidity is Ethereum's programming language that lets people access the EVM (Ethereum Virtual Machine), which is a underlying technology of Ethereum that lets blockchains compile and run code. With Solidity a programmer creates a Contract which do anything that all Turin-complete machines can do, when the contract is sent to the Ethereum blockchain it is forever there, making the contract, the logic behind, the code and the whole idea live 24/7 (as long as there are miners on the Ethereum blockchain), also makes the smart contract resiliant against government bans and blocks too, so users all over the world can access the smart contract.

These two technologies combined we get a fully decentralised network run by two protocols: the Ethereum protocol and the IPFS protocol. 
In our project we use Ethereum for almost everything: Registering, tweeting, accessing tweets. 
IPFS we currently use for hosting the server/code that interacts with the Solidity smart contract.
This relation creates a powerful network that cannot be easily stopped or shut-down. 

## Why Decentralisation matters

Decentralisation matters for a few things, but mostly for privacy, immutability and resiliancy against attacks. Decentralisation also means a faster internet if we take IPFS for example. History tells us that the first huge step in technology was OpenSource projects, which made computer scientists, software engineers, programmers and a bunch of other people share their ideas, creations and projects so other people could use them to benefit the world.
These days Ethereum and IPFS took it to another level where the incentivise people by making open source project. Ethereum created a completely new market of tokens, because they incentivised the creators, they created a way for people to create open source applications while also gaining incentive as long as there are people using the network.
By these examples we can see that Decentralisation is the new era and nobody is going to stop it, everyone is going to choose decentralised products where they incentivise users and share their profit over products that keep all the profit and revenue. 

## APPLICATION OVERVIEW
### Background

Our network currently tackles a simple problem: mutability. We want to create a network firstly, where data is immutable. If you said something - it's over. That makes editing impossible and makes the network different when people know that data on it is forever there, cannot be changed and therefore it is real.

### What can you do on the application

Currently you can see all tweets on the network, register your account and create a tweet that will be added onto the blockchain. Also the website shows the current network the user is in, total tweets in network, his username and his tweet count.

### Seeing all the tweets in the network

When a user visits our website at the moment (on version 0.0.1) he can see all the tweets on this network as you can see here.

![Seeing the Tweets](https://imgur.com/2bbhy6d.png)

On the left the user tweet message is displayed. On the right the user's username is displayed. When another user somewhere across the planet creates a new tweet, your screen should update automatically too, that means you're seeing all the tweets live.

### Registering

Registering is available only when a user hasn't joined the network yet. If he has joined - he cannot change his username as of version 0.0.1.

![Registering](https://imgur.com/2CZdp16.png)

As you can see the registering part is simple and only works if the user hasn't signed in yet. A user has to write his username and press submit. Simple. If registering was succesfull he'll see an update.

#### Tweeting

Tweeting is available only when the user has joined the network. Other way he'll have to join. 

![Tweeting](https://imgur.com/YESomic.png)

Tweeting is fairly simple, the user has to put his message. There is no message length restriction, though, as the message's length increases its gas value increases also, so users should stick to short and medium sized messages/tweets.


#### Network, status and count update

There is also a simple box on the main page where it shows four things:
Users current network.
Total tweet count on the DecTweet network.
Users username.
Total tweet count of the user.

![Network update](https://imgur.com/7ZITgYT.png)

This is fairly simple. If the user doesn't have metamask or isn't signed in to his account, he will see a reminder on top of the page and the network value will be 'No network found'. 

#### Back-end and Front-end technologies

For back-end we used solidity and created our smart contract using the remix compiler. For front-end we use web3 (web3.js) and vanilla javascript to interact with the contract, update values, addTweets and manipulate the dom. The application is completely asynchronous because solidity contract functions give async calls. Also the application is live meaning once a tweet is broadcasted onto the network, other people in the website will have their dom updated when that happens.



