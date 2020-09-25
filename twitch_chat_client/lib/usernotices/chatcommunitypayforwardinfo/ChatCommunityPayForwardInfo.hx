package twitch_chat_client.lib.usernotices.chatcommunitypayforwardinfo;

/**
	Information about a "forward payment" to the community.
**/
typedef ChatCommunityPayForwardInfo = {
	/**
		The user ID of the forwarding user.
	**/
	var userId : String;
	/**
		The display name of the forwarding user.
	**/
	var displayName : String;
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