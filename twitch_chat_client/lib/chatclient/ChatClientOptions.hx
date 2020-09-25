package twitch_chat_client.lib.chatclient;

/**
	Options for a chat client.
**/
typedef ChatClientOptions = {
	/**
		Whether to request a token with only read permission.
		
		Ignored if `legacyScopes` is `true`.
	**/
	@:optional
	var readOnly : Bool;
	/**
		Whether to request a token with the old chat permission scope.
		
		If you're not sure whether this is necessary, just try leaving this off, and if it doesn't work, turn it on and try again.
	**/
	@:optional
	var legacyScopes : Bool;
	/**
		The minimum log level of messages that will be sent from the underlying IRC client.
	**/
	@:optional
	var logLevel : d_fischer.logger.LogLevel;
	/**
		Options to pass to the logger.
	**/
	@:optional
	var logger : {
		@:optional
		var name : String;
		@:optional
		var minLevel : ts.AnyOf2<String, Int>;
		@:optional
		var colors : Bool;
		@:optional
		var emoji : Bool;
		@:optional
		var timestamps : Bool;
	};
	/**
		Whether to connect securely using SSL.
		
		You should not disable this except for debugging purposes.
	**/
	@:optional
	var ssl : Bool;
	/**
		Custom hostname for connecting to chat.
	**/
	@:optional
	var hostName : String;
	/**
		Whether to use a WebSocket to connect to chat.
	**/
	@:optional
	var webSocket : Bool;
	/**
		Whether to receive JOIN and PART messages from Twitch chat.
	**/
	@:optional
	var requestMembershipEvents : Bool;
	/**
		Channels to join after connecting.
		
		May also be a function (sync or async) that returns a list of channels.
	**/
	@:optional
	var channels : d_fischer.shared_utils.ResolvableValue<Array<String>>;
};