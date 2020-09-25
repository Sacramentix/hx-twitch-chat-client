package d_fischer.logger;

@:jsRequire("@d-fischer/logger", "LogLevel") @:enum extern abstract LogLevel(Int) from Int to Int {
	var CRITICAL;
	var ERROR;
	var WARNING;
	var INFO;
	var DEBUG1;
	var DEBUG2;
	var DEBUG3;
	var DEBUG;
	var TRACE;
}