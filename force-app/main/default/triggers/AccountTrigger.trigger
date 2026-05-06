trigger AccountTrigger on Account (before insert) {
	AccountHandler.beforeInsert(Trigger.new);
}