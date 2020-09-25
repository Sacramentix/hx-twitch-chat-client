package twitch_chat_client;

/**
	Information about a subscription that was upgraded from a Prime subscription.
**/
typedef ChatSubUpgradeInfo = {
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
};