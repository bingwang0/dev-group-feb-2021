trigger CoolEventTrigger on Cool_Event__e (after insert) {
    CoolEventTriggerHandler.sendNotificationAbtCoolNumber(trigger.new);
}