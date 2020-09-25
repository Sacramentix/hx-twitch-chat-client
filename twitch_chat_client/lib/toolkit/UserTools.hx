package twitch_chat_client.lib.toolkit;

@:jsRequire("twitch-chat-client/lib/Toolkit/UserTools") @valueModuleOnly extern class UserTools {
	static function toUserName(channel:String):String;
	static function toChannelName(user:String):String;
}