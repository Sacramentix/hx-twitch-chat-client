package twitch_chat_client.lib.capabilities.twitchtagscapability.messagetypes.clearmsg;

@:jsRequire("twitch-chat-client/lib/Capabilities/TwitchTagsCapability/MessageTypes/ClearMsg", "ClearMsg") extern class ClearMsg extends ircv3.Message<Dynamic> {
	function new();
	var channel : ircv3.MessageParam;
	var message : ircv3.MessageParam;
	final userName : String;
	final targetMessageId : Null<String>;
	static var prototype : ClearMsg;
	static final COMMAND : String;
}