// compare different platform event types: publish after commit

Old_Event__e [] oldEvents = new Old_Event__e [] {};
for (Integer i=0; i<=99; i++) {
    oldEvents.add(new Old_Event__e());
}

EventBus.publish(oldEvents);