package twitch_chat_client;

/**
	Information about a community gift subscription.
**/
typedef ChatCommunitySubInfo = {
	/**
		The user name of the user that gifted the subscription(s).
	**/
	@:optional
	var gifter : String;
	/**
		The user ID of the user that gifted the subscription(s).
	**/
	@:optional
	var gifterUserId : String;
	/**
		The display name of the user that gifted the subscription(s).
	**/
	@:optional
	var gifterDisplayName : String;
	/**
		The number of subscriptions the gifting user has already gifted in total.
	**/
	@:optional
	var gifterGiftCount : Float;
	/**
		The number of subscriptions that were gifted to the channel.
	**/
	var count : Float;
	/**
		The plan ID of the subscription(s).
		
		Tier 1, 2, 3 are '1000', '2000', '3000' respectively. Prime subscriptions can't be gifted.
	**/
	var plan : String;
};