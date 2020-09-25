package twitch_chat_client.lib.usernotices.chatprimecommunitygiftinfo;

/**
	Information about a Prime Community Gift.
**/
typedef ChatPrimeCommunityGiftInfo = {
	/**
		The name of the gift.
	**/
	var name : String;
	/**
		The user that sent the gift.
	**/
	var gifter : String;
	/**
		The display name of the user that sent the gift.
	**/
	var gifterDisplayName : String;
};