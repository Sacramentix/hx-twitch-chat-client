package twitch_chat_client;

/**
	Information about a subscription that was gifted.
**/
typedef ChatSubGiftInfo = {
	/**
		The name of the user that gifted the subscription.
	**/
	@:optional
	var gifter : String;
	/**
		The user ID of the user that gifted the subscription.
	**/
	@:optional
	var gifterUserId : String;
	/**
		The display name of the user that gifted the subscription.
	**/
	@:optional
	var gifterDisplayName : String;
	/**
		The number of subscriptions the gifting user has already gifted in total.
	**/
	@:optional
	var gifterGiftCount : Float;
	/**
		The duration of the gifted subscription, in months.
	**/
	var giftDuration : Float;
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
		The plan name of the subscription.
	**/
	var planName : String;
	/**
		Whether the subscription was "paid" for with Twitch Prime.
	**/
	var isPrime : Bool;
	/**
		The number of total months of subscriptions for the channel.
	**/
	var months : Float;
	/**
		The number of consecutive months of subscriptions for the channel.
		
		Will not be sent if the user resubscribing does not choose to.
	**/
	@:optional
	var streak : Float;
	/**
		The message that was sent with the subscription.
	**/
	@:optional
	var message : String;
};