package twitch_chat_client;

@:jsRequire("twitch-chat-client", "default") @:forward @:forwardStatics extern abstract DeprecatedChatClient(ChatClient) from ChatClient to ChatClient {
	/**
		Creates a new Twitch chat client.
	**/
	function new(authProvider:Null<twitch.AuthProvider>, ?options:twitch_chat_client.lib.chatclient.ChatClientOptions);
	static var prototype : ChatClient;
	private static final HOST_MESSAGE_REGEX : Dynamic;
	/**
		Creates a new Twitch chat client with the user info from the {@AuthProvider} instance.
	**/
	static function forTwitchClient(authProvider:twitch.AuthProvider, ?options:twitch_chat_client.lib.chatclient.ChatClientOptions):ChatClient;
	/**
		Creates a new anonymous Twitch chat client.
	**/
	static function anonymous(?options:twitch_chat_client.lib.chatclient.ChatClientOptions):ChatClient;
	private static var _generateJustinfanNick : Dynamic;
}