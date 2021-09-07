//handler that posts notification, 1
public inherited sharing class CoolEventTriggerHandler {
    public static void sendNotificationAbtCoolNumber(List<Cool_Event__e> newEvents) {
        // notification target Id
        Id targetId = '0011k00000nBZsyAAG';
        Set<String> recipientsIds = new Set<String>{'0051k000004kiEDAAY'};

        // Get the Id for our custom notification type
        CustomNotificationType notificationType = 
            [SELECT Id, DeveloperName 
             FROM CustomNotificationType 
             WHERE DeveloperName='Spring_21_Demo'];
        for (Cool_Event__e e : newEvents) {
            if (e.Random_Number__c == 77) {
        // Create a new custom notification
                Messaging.CustomNotification notification = new Messaging.CustomNotification();
        
                // Set the contents for the notification
                notification.setTitle('Apex Custom Notification ' + String.valueOf(system.now()));
                notification.setBody('The notifications are coming from INSIDE the Apex!');
        
                // Set the notification type and target
                notification.setNotificationTypeId(notificationType.Id);
                notification.setTargetId(targetId);
                
                // Actually send the notification
                try {
                    notification.send(recipientsIds);
                }
                catch (Exception ex) {
                    System.debug('Problem sending notification: ' + ex.getMessage());
                }                
            }
        }
    }
}
