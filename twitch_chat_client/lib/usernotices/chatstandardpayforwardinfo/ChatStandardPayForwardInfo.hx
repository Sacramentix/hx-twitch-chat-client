package twitch_chat_client.lib.usernotices.chatstandardpayforwardinfo;

/**
	Information about a "forward payment" to a specific user.
**/
typedef ChatStandardPayForwardInfo = {
	/**
		The user ID of the forwarding user.
	**/
	var userId : String;
	/**
		The display name of the forwarding user.
	**/
	var displayName : String;
	/**
		The user ID of the user receiving the new gift.
	**/
	var recipientUserId : String;
	/**
		The display name of the user receiving the new gift.
	**/
	var recipientDisplayName : String;
	/**
		The user ID of the original gifter.
		
		May be empty if the original gift was anonymous.
	**/
	@:optional
	var originalGifterUserId : String;
	/**
		The display name of the original gifter.
		
		May be empty if the original gift was anonymous.
	**/
	@:optional
	var originalGifterDisplayName : String;
};