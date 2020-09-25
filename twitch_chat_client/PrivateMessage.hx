package twitch_chat_client;

@:jsRequire("twitch-chat-client", "PrivateMessage") extern class PrivateMessage extends ircv3.lib.message.messagetypes.commands.index.PrivateMessage {
	function new();
	final userInfo : ChatUser;
	final channelId : Null<String>;
	final isCheer : Bool;
	final totalBits : Float;
	final emoteOffsets : js.lib.Map<String, Array<String>>;
	function parseEmotes():Array<ParsedMessagePart>;
	function parseEmotesAndBits(cheermotes:twitch.CheermoteList):Array<ParsedMessagePart>;
	static var prototype : PrivateMessage;
}