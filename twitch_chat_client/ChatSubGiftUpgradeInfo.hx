package twitch_chat_client;

/**
	Information about a subscription that was upgraded from a gift.
**/
typedef ChatSubGiftUpgradeInfo = {
	/**
		The name of the user that gifted the original subscription.
	**/
	var gifter : String;
	/**
		The display name of the user that gifted the original subscription.
	**/
	var gifterDisplayName : String;
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