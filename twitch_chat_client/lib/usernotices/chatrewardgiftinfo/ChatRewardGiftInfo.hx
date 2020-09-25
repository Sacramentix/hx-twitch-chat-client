package twitch_chat_client.lib.usernotices.chatrewardgiftinfo;

/**
	Information about a Reward Gift triggered by a special event.
**/
typedef ChatRewardGiftInfo = {
	/**
		The domain of the reward, i.e. an identifier of the special event that caused these rewards.
	**/
	var domain : String;
	/**
		The amount of rewards that were shared.
	**/
	var count : Float;
	/**
		The user ID of the gifter.
	**/
	var gifterId : String;
	/**
		The display name of the gifter.
	**/
	var gifterDisplayName : String;
	/**
		The amount of total rewards this user shared.
	**/
	var gifterGiftCount : Float;
	/**
		The type of trigger that caused these rewards.
		
		The only known value of this is "CHEER".
	**/
	var triggerType : String;
};