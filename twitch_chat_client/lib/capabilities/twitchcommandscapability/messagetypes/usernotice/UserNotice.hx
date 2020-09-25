package twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice;

@:jsRequire("twitch-chat-client/lib/Capabilities/TwitchCommandsCapability/MessageTypes/UserNotice", "UserNotice") extern class UserNotice extends ircv3.Message<UserNotice> {
	function new();
	var channel : ircv3.MessageParam;
	var message : ircv3.MessageParam;
	final userInfo : twitch_chat_client.ChatUser;
	final channelId : Null<String>;
	final emoteOffsets : js.lib.Map<String, Array<String>>;
	function parseEmotes():Array<twitch_chat_client.ParsedMessagePart>;
	static var prototype : UserNotice;
}