package twitch_chat_client;

/**
	Information about a subsription extension.
**/
typedef ChatSubExtendInfo = {
	/**
		The user ID of the subscribing user.
	**/
	var userId : String;
	/**
		The display name of the subscribing user.
	**/
	var displayName : String;
	/**
		The plan ID of the subscription.
		
		Tier 1, 2, 3 are '1000', '2000', '3000' respectively, and a Twitch Prime subscription is called 'Prime'.
	**/
	var plan : String;
	/**
		The number of total months of subscriptions for the channel.
	**/
	var months : Float;
	/**
		The month when the subscription will now end.
		
		1 corresponds to January, and 12 means December.
	**/
	var endMonth : Float;
};