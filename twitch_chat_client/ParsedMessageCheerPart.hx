package twitch_chat_client;

typedef ParsedMessageCheerPart = {
	var type : String;
	var position : Float;
	var length : Float;
	var name : String;
	var amount : Float;
	var displayInfo : twitch.CheermoteDisplayInfo;
};