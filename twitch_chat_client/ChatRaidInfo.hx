package twitch_chat_client;

/**
	Information about a raid.
**/
typedef ChatRaidInfo = {
	/**
		The display name of the raider.
	**/
	var displayName : String;
	/**
		The number of viewers joining with the raid.
	**/
	var viewerCount : Float;
};