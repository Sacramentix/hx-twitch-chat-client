package twitch_chat_client;

/**
	Information about a bits tier upgrade.
**/
typedef ChatBitsBadgeUpgradeInfo = {
	/**
		The display name of the user.
	**/
	var displayName : String;
	/**
		The new bits badge threshold that was achieved.
	**/
	var threshold : Float;
};