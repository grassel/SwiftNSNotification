//
//  ClassA.swift
//  SwiftNSNotification
//
//  Created by Guido Grassel on 30/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import Foundation

let notificationName = "org.grassel.SwiftNSNotification.testnotification";

class ClassA : NSObject {
    var delegate : ClassADelegate!;
    
    init(delegate : ClassADelegate) {
        self.delegate = delegate
        super.init()
    }
    
    func registerObserver() {
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserverForName(notificationName,
            object: nil, // we do not care from which object the notification comes 
            queue: NSOperationQueue.mainQueue(),
            usingBlock: self.notificationReceived);
    }
    
    func notificationReceived (notification: NSNotification!) {
        println ("Notification received!");
        self.delegate?.notificationReceived(notification)
    }
}
