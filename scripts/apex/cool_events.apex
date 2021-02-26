// compare different platform event types: publish immediately

Cool_Event__e [] coolEvents = new Cool_Event__e [] {};
for (Integer i=0; i<=99; i++) {
    coolEvents.add(new Cool_Event__e(Random_Number__c=i));
}

EventBus.publish(coolEvents);