@:jsRequire("twitch-chat-client") @valueModuleOnly extern class TwitchChatClient {
	static function toChannelName(user:String):String;
	static function toUserName(channel:String):String;
}