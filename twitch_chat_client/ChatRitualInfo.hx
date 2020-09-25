package twitch_chat_client;

/**
	Information about a raid.
**/
typedef ChatRitualInfo = {
	/**
		The name of the ritual.
		
		Currently, the only known ritual is "new_chatter".
	**/
	var ritualName : String;
	/**
		The message sent with the ritual.
		
		With the "new_chatter" ritual, you can choose between a set list of emotes to send.
	**/
	var message : String;
};