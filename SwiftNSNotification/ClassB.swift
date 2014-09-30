//
//  ClassB.swift
//  SwiftNSNotification
//
//  Created by Guido Grassel on 30/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import Foundation

class ClassB : NSObject {
    
    override init() {
        super.init()
    }

    func sendNotification() {
        let notificationCenter = NSNotificationCenter.defaultCenter()
        var n = NSNotification(name: notificationName, object: self)
        notificationCenter.postNotification(n);
    }
 }
