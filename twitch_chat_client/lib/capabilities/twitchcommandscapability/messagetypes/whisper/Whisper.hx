package twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.whisper;

@:jsRequire("twitch-chat-client/lib/Capabilities/TwitchCommandsCapability/MessageTypes/Whisper", "Whisper") extern class Whisper extends ircv3.Message<Whisper> {
	function new();
	var target : ircv3.MessageParam;
	var message : ircv3.MessageParam;
	final userInfo : twitch_chat_client.ChatUser;
	final emoteOffsets : js.lib.Map<String, Array<String>>;
	function parseEmotes():Array<twitch_chat_client.ParsedMessagePart>;
	static var prototype : Whisper;
}