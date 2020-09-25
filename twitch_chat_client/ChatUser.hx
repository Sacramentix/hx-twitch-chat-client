package twitch_chat_client;

/**
	A user in chat.
**/
@:jsRequire("twitch-chat-client", "ChatUser") extern class ChatUser {
	function new(userName:String, userData:Null<js.lib.Map<String, String>>);
	private final _userData : Dynamic;
	private final _userName : Dynamic;
	private var _parseBadgesLike : Dynamic;
	/**
		The name of the user.
	**/
	final userName : String;
	/**
		The display name of the user.
	**/
	final displayName : String;
	/**
		The color the user chose to display in chat.
		
		Returns null if the user didn't choose a color. In this case, you should generate your own color.
	**/
	final color : Null<String>;
	/**
		The badges of the user. Returned as a map that maps the badge category to the detail.
	**/
	final badges : js.lib.Map<String, String>;
	/**
		The badge info of the user. Returned as a map that maps the badge category to the detail.
	**/
	final badgeInfo : js.lib.Map<String, String>;
	/**
		The ID of the user.
	**/
	final userId : Null<String>;
	/**
		The type of the user.
		Possible values are undefined, 'mod', 'global_mod', 'admin' and 'staff'.
	**/
	final userType : Null<String>;
	/**
		Whether the user is the broadcaster.
	**/
	final isBroadcaster : Bool;
	/**
		Whether the user is subscribed to the channel.
	**/
	final isSubscriber : Bool;
	/**
		Whether the user is a Founder of the channel.
	**/
	final isFounder : Bool;
	/**
		Whether the user is a moderator of the channel.
	**/
	final isMod : Bool;
	/**
		Whether the user is a VIP in the channel.
	**/
	final isVip : Bool;
	static var prototype : ChatUser;
}