//
//  ClassADelegate.swift
//  SwiftNSNotification
//
//  Created by Guido Grassel on 30/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import Foundation

protocol ClassADelegate {
    func notificationReceived(notif : NSNotification);
}