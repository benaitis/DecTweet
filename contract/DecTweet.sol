pragma solidity ^0.4.22;

contract DecTweet {
    struct userData {
      address player;
      string username;
      uint[] tweetsID;
      address[] followers;
    }
 mapping (address => userData) users;

    struct Tweet {
        string text;
        address user;
    }

 //mapping (uint => Tweet) tweets;
   Tweet[] public tweets;

 event addTweet(address indexed authour, string message, uint index);

 modifier onlyRegistered()
 {
     require(isRegistered(msg.sender));
     _;
 }

 function register(string _username) public returns(bool result)
 {
     if(isRegistered(msg.sender)){
         return false;
     }

     users[msg.sender].username = _username;
     return true;
 }

 function getUsername(address _address) public view returns (string)
 {
     return users[_address].username;
 }

 function isRegistered(address _address) public view returns (bool result)
 {
     if(bytes(users[_address].username).length > 0)
     return true;
     else
     return false;
 }

 function NewTweet(string message) public onlyRegistered returns(uint index) {
     Tweet memory tweet = Tweet(message,msg.sender);
     tweets.push(tweet);

     users[msg.sender].tweetsID.push(tweets.length -1);

     emit addTweet(msg.sender, message, tweets.length - 1);
     return tweets.length -1;
 }

 function getAllTweetCount() public view returns(uint count){
     return tweets.length;
 }

 function getTweet(uint id) public view returns(string text, address user) //get specific tweet from array
 {
     return(tweets[id].text , tweets[id].user);
 }

 function getUserTweetsCount(address _user) public view returns(uint count) //Retrieves how many tweets the user has tweeted
 {
     if(isRegistered(_user))
     {
         return users[_user].tweetsID.length;
     }

     return 0;
 }

}
