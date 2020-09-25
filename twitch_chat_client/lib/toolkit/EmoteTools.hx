package twitch_chat_client.lib.toolkit;

@:jsRequire("twitch-chat-client/lib/Toolkit/EmoteTools") @valueModuleOnly extern class EmoteTools {
	static function parseEmoteOffsets(?emotes:String):js.lib.Map<String, Array<String>>;
	static function parseEmotePositions(message:String, emoteOffsets:js.lib.Map<String, Array<String>>):Array<twitch_chat_client.ParsedMessageEmotePart>;
	static function fillTextPositions(message:String, otherPositions:Array<twitch_chat_client.ParsedMessagePart>):Array<twitch_chat_client.ParsedMessagePart>;
}