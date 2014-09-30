//
//  SwiftNSNotificationTests.swift
//  SwiftNSNotificationTests
//
//  Created by Guido Grassel on 30/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import UIKit
import XCTest

class SwiftNSNotificationTests: XCTestCase, ClassADelegate {
    
    var objA : ClassA!
    var objB : ClassB!
    var expectation : XCTestExpectation!;
    
    override func setUp() {
        super.setUp()
        self.objA = ClassA(delegate: self);
        self.objA.registerObserver();
        
        self.objB = ClassB();
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        self.expectation = self.expectationWithDescription("receive notification from B to A");

        self.objB.sendNotification();
        self.waitForExpectationsWithTimeout(10.0, handler: nil);
    }
    
  
    func notificationReceived(notif : NSNotification) {
        self.expectation.fulfill()
        XCTAssert(notif.object != nil, "notification sender is nil");
        var o : NSObject = notif.object! as NSObject
        XCTAssert(o == objB, "notification sender is not objB");
        
        XCTAssert(notif.name == notificationName, "notification.name != \(notificationName)");
    }
}
