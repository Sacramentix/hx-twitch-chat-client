package twitch_chat_client;

/**
	An interface to Twitch chat.
**/
@:jsRequire("twitch-chat-client", "ChatClient") extern class ChatClient extends ircv3.IrcClient {
	/**
		Creates a new Twitch chat client.
	**/
	function new(authProvider:Null<twitch.AuthProvider>, ?options:twitch_chat_client.lib.chatclient.ChatClientOptions);
	@:optional
	final _authProvider : twitch.AuthProvider;
	private final _useLegacyScopes : Dynamic;
	private final _readOnly : Dynamic;
	private var _authVerified : Dynamic;
	@:optional
	private var _authFailureMessage : Dynamic;
	private var _chatLogger : Dynamic;
	/**
		Fires when a user is timed out from a channel.
	**/
	dynamic function onTimeout(handler:(channel:String, user:String, duration:Float) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user is permanently banned from a channel.
	**/
	dynamic function onBan(handler:(channel:String, user:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user upgrades their bits badge in a channel.
	**/
	dynamic function onBitsBadgeUpgrade(handler:(channel:String, user:String, upgradeInfo:ChatBitsBadgeUpgradeInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when the chat of a channel is cleared.
	**/
	dynamic function onChatClear(handler:(channel:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when emote-only mode is toggled in a channel.
	**/
	dynamic function onEmoteOnly(handler:(channel:String, enabled:Bool) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when followers-only mode is toggled in a channel.
	**/
	dynamic function onFollowersOnly(handler:ts.AnyOf2<(channel:String, enabled:Bool) -> Void, (channel:String, enabled:Bool, delay:Float) -> Void>):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a channel hosts another channel.
	**/
	dynamic function onHost(handler:ts.AnyOf2<(channel:String, target:String) -> Void, (channel:String, target:String, viewers:Float) -> Void>):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a channel you're logged in as its owner is being hosted by another channel.
	**/
	dynamic function onHosted(handler:ts.AnyOf2<(channel:String, byChannel:String, auto:Bool) -> Void, (channel:String, byChannel:String, auto:Bool, viewers:Float) -> Void>):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when Twitch tells you the number of hosts you have remaining in the next half hour for the channel
		for which you're logged in as owner after hosting a channel.
	**/
	dynamic function onHostsRemaining(handler:(channel:String, numberOfHosts:Float) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user joins a channel.
		
		The join/part events are cached by the Twitch chat server and will be batched and sent every 30-60 seconds.
		
		Please note that unless you enabled the `requestMembershipEvents` option, this will only react to your own joins.
	**/
	dynamic function onJoin(handler:(channel:String, user:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user leaves ("parts") a channel.
		
		The join/part events are cached by the Twitch chat server and will be batched and sent every 30-60 seconds.
		
		Please note that unless you enabled the `requestMembershipEvents` option, this will only react to your own parts.
	**/
	dynamic function onPart(handler:(channel:String, user:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a single message is removed from a channel.
	**/
	dynamic function onMessageRemove(handler:(channel:String, messageId:String, msg:twitch_chat_client.lib.capabilities.twitchtagscapability.messagetypes.clearmsg.ClearMsg) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when R9K mode is toggled in a channel.
	**/
	dynamic function onR9k(handler:(channel:String, enabled:Bool) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when host mode is disabled in a channel.
	**/
	dynamic function onUnhost(handler:(channel:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user raids a channel.
	**/
	dynamic function onRaid(handler:(channel:String, user:String, raidInfo:ChatRaidInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user cancels a raid.
	**/
	dynamic function onRaidCancel(handler:(channel:String, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user performs a "ritual" in a channel.
	**/
	dynamic function onRitual(handler:(channel:String, user:String, ritualInfo:ChatRitualInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when slow mode is toggled in a channel.
	**/
	dynamic function onSlow(handler:ts.AnyOf2<(channel:String, enabled:Bool) -> Void, (channel:String, enabled:Bool, delay:Float) -> Void>):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when sub only mode is toggled in a channel.
	**/
	dynamic function onSubsOnly(handler:(channel:String, enabled:Bool) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user subscribes to a channel.
	**/
	dynamic function onSub(handler:(channel:String, user:String, subInfo:ChatSubInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user resubscribes to a channel.
	**/
	dynamic function onResub(handler:(channel:String, user:String, subInfo:ChatSubInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user gifts a subscription to a channel to another user.
	**/
	dynamic function onSubGift(handler:(channel:String, user:String, subInfo:ChatSubGiftInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user gifts random subscriptions to the community of a channel.
	**/
	dynamic function onCommunitySub(handler:(channel:String, user:String, subInfo:ChatCommunitySubInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user extends their subscription using a Sub Token.
	**/
	dynamic function onSubExtend(handler:(channel:String, user:String, subInfo:ChatSubExtendInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user gifts rewards during a special event.
	**/
	dynamic function onRewardGift(handler:(channel:String, user:String, rewardGiftInfo:twitch_chat_client.lib.usernotices.chatrewardgiftinfo.ChatRewardGiftInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user upgrades their Prime subscription to a paid subscription in a channel.
	**/
	dynamic function onPrimePaidUpgrade(handler:(channel:String, user:String, subInfo:ChatSubUpgradeInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user upgrades their gift subscription to a paid subscription in a channel.
	**/
	dynamic function onGiftPaidUpgrade(handler:(channel:String, user:String, subInfo:ChatSubGiftUpgradeInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user gifts a Twitch Prime benefit to the channel.
	**/
	dynamic function onPrimeCommunityGift(handler:(channel:String, user:String, subInfo:twitch_chat_client.lib.usernotices.chatprimecommunitygiftinfo.ChatPrimeCommunityGiftInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user pays forward a subscription that was gifted to them to a specific user.
	**/
	dynamic function onStandardPayForward(handler:(channel:String, user:String, forwardInfo:twitch_chat_client.lib.usernotices.chatstandardpayforwardinfo.ChatStandardPayForwardInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user pays forward a subscription that was gifted to them to the community.
	**/
	dynamic function onCommunityPayForward(handler:(channel:String, user:String, forwardInfo:twitch_chat_client.lib.usernotices.chatcommunitypayforwardinfo.ChatCommunityPayForwardInfo, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.usernotice.UserNotice) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when receiving a whisper from another user.
	**/
	dynamic function onWhisper(handler:(user:String, message:String, msg:twitch_chat_client.lib.capabilities.twitchcommandscapability.messagetypes.whisper.Whisper) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when you tried to execute a command you don't have sufficient permission for.
	**/
	dynamic function onNoPermission(handler:(channel:String, message:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a message you tried to send gets rejected by the ratelimiter.
	**/
	dynamic function onMessageRatelimit(handler:(channel:String, message:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when authentication fails.
	**/
	dynamic function onAuthenticationFailure(handler:(message:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when sending a message fails.
	**/
	dynamic function onMessageFailed(handler:(channel:String, reason:String) -> Void):d_fischer.typed_event_emitter.Listener;
	/**
		Fires when a user sends a message to a channel.
	**/
	dynamic function onMessage(handler:(channel:String, user:String, message:String, msg:PrivateMessage) -> Void):d_fischer.typed_event_emitter.Listener;
	private final _onBanResult : Dynamic;
	private final _onTimeoutResult : Dynamic;
	private final _onUnbanResult : Dynamic;
	private final _onColorResult : Dynamic;
	private final _onCommercialResult : Dynamic;
	private final _onDeleteMessageResult : Dynamic;
	private final _onEmoteOnlyResult : Dynamic;
	private final _onEmoteOnlyOffResult : Dynamic;
	private final _onFollowersOnlyResult : Dynamic;
	private final _onFollowersOnlyOffResult : Dynamic;
	private final _onHostResult : Dynamic;
	private final _onUnhostResult : Dynamic;
	private final _onModResult : Dynamic;
	private final _onUnmodResult : Dynamic;
	private final _onModsResult : Dynamic;
	private final _onJoinResult : Dynamic;
	private final _onR9kResult : Dynamic;
	private final _onR9kOffResult : Dynamic;
	private final _onSlowResult : Dynamic;
	private final _onSlowOffResult : Dynamic;
	private final _onSubsOnlyResult : Dynamic;
	private final _onSubsOnlyOffResult : Dynamic;
	private final _onVipResult : Dynamic;
	private final _onUnvipResult : Dynamic;
	private final _onVipsResult : Dynamic;
	/**
		Hosts a channel on another channel.
	**/
	function host(channel:Null<String>, target:String):js.lib.Promise<Void>;
	/**
		Ends any host on a channel.
		
		This only works when in the channel that was hosted in order to provide feedback about success of the command.
		
		If you don't need this feedback, consider using {@ChatClient#unhostOutside} instead.
	**/
	function unhost(?channel:String):js.lib.Promise<Void>;
	/**
		Ends any host on a channel.
		
		This works even when not in the channel that was hosted, but provides no feedback about success of the command.
		
		If you need feedback about success, use {@ChatClient#unhost} (but make sure you're in the channel you are hosting).
	**/
	function unhostOutside(?channel:String):Void;
	/**
		Bans a user from a channel.
	**/
	function ban(channel:Null<String>, user:String, ?reason:String):js.lib.Promise<Void>;
	/**
		Clears all messages in a channel.
	**/
	function clear(?channel:String):js.lib.Promise<Void>;
	/**
		Changes your username color.
	**/
	function changeColor(color:String):js.lib.Promise<Void>;
	/**
		Runs a commercial break on a channel.
	**/
	function runCommercial(channel:String, duration:twitch.CommercialLength):js.lib.Promise<Void>;
	/**
		Deletes a message from a channel.
	**/
	function deleteMessage(channel:String, message:ts.AnyOf2<String, ircv3.lib.message.messagetypes.commands.index.PrivateMessage>):js.lib.Promise<Void>;
	/**
		Enables emote-only mode in a channel.
	**/
	function enableEmoteOnly(channel:String):js.lib.Promise<Void>;
	/**
		Disables emote-only mode in a channel.
	**/
	function disableEmoteOnly(channel:String):js.lib.Promise<Void>;
	/**
		Enables followers-only mode in a channel.
	**/
	function enableFollowersOnly(channel:String, ?delay:Float):js.lib.Promise<Void>;
	/**
		Disables followers-only mode in a channel.
	**/
	function disableFollowersOnly(channel:String):js.lib.Promise<Void>;
	/**
		Gives a user moderator rights in a channel.
	**/
	function mod(channel:String, user:String):js.lib.Promise<Void>;
	/**
		Takes moderator rights from a user in a channel.
	**/
	function unmod(channel:String, user:String):js.lib.Promise<Void>;
	/**
		Retrieves a list of moderators in a channel.
	**/
	function getMods(channel:String):js.lib.Promise<Array<String>>;
	/**
		Enables r9k mode in a channel.
	**/
	function enableR9k(channel:String):js.lib.Promise<Void>;
	/**
		Disables r9k mode in a channel.
	**/
	function disableR9k(channel:String):js.lib.Promise<Void>;
	/**
		Enables slow mode in a channel.
	**/
	function enableSlow(channel:String, ?delay:Float):js.lib.Promise<Void>;
	/**
		Disables slow mode in a channel.
	**/
	function disableSlow(channel:String):js.lib.Promise<Void>;
	/**
		Enables subscribers-only mode in a channel.
	**/
	function enableSubsOnly(channel:String):js.lib.Promise<Void>;
	/**
		Disables subscribers-only mode in a channel.
	**/
	function disableSubsOnly(channel:String):js.lib.Promise<Void>;
	/**
		Times out a user in a channel and removes all their messages.
	**/
	function timeout(channel:String, user:String, ?duration:Float, ?reason:String):js.lib.Promise<Void>;
	/**
		Removes all messages of a user from a channel.
	**/
	function purge(channel:String, user:String, ?reason:String):js.lib.Promise<Void>;
	/**
		Gives a user VIP status in a channel.
	**/
	function addVip(channel:String, user:String):js.lib.Promise<Void>;
	function addVIP(channel:String, user:String):js.lib.Promise<Void>;
	/**
		Takes VIP status from a user in a channel.
	**/
	function removeVip(channel:String, user:String):js.lib.Promise<Void>;
	function removeVIP(channel:String, user:String):js.lib.Promise<Void>;
	/**
		Retrieves a list of VIPs in a channel.
	**/
	function getVips(channel:String):js.lib.Promise<Array<String>>;
	function getVIPs(channel:String):js.lib.Promise<Array<String>>;
	/**
		Sends a message to a channel.
	**/
	function say(channel:String, message:String):Void;
	/**
		Sends an action message (/me) to a channel.
	**/
	function action(channel:String, message:String):Void;
	/**
		Sends a whisper message to another user.
	**/
	function whisper(user:String, message:String):Void;
	/**
		Joins a channel.
	**/
	function join(channel:String):js.lib.Promise<Void>;
	/**
		Disconnects from the chat server.
	**/
	function quit():js.lib.Promise<Void>;
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