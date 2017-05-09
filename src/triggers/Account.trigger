/*
* @description	This is the Account trigger that fires on all events. All logic handled by AccountTriggerHandler.cls
* @author		Davin Casey
* @deprecated	False
*/
trigger Account on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

	AccountTriggerHandler.getInstance().fire();
}