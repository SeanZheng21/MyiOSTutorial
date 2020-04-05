//
//  PowerFocusTests.swift
//  PowerFocusTests
//
//  Created by Carlistle ZHENG on 10/17/19.
//  Copyright © 2019 Carlistle ZHENG. All rights reserved.
//

import XCTest
@testable import PowerFocus

class PowerFocusTests: XCTestCase {
    var focusTimer: FocusTimer!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        focusTimer = FocusTimer(20, 10, 15, 5, true)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInitWorkLength() {
        XCTAssertEqual(20, focusTimer.workLength)
    }
    
    func testInitBreakLength() {
        XCTAssertEqual(10, focusTimer.breakLength)
    }
    
    func testInitLongBreakLength() {
        XCTAssertEqual(15, focusTimer.longBreakLength)
    }
    
    func testInitLongBreakFreq() {
        XCTAssertEqual(5, focusTimer.longBreakFreq)
    }

    func testInitHasLongBreak() {
        XCTAssertTrue(focusTimer.hasLongBreak)
    }
    
    func testDefaultHasLongBreak() {
        focusTimer = FocusTimer(25, 5, 15)
        XCTAssertTrue(focusTimer.hasLongBreak)
    }
    
    func testDefaultLongBreakFreq() {
        focusTimer = FocusTimer(25, 5, 15)
        XCTAssertEqual(3, focusTimer.longBreakFreq)
    }
    
    func testDefaultCompletedCircles() {
        XCTAssertEqual(0, focusTimer.getCompletedCircles())
    }
    
    func testDefaultActivity() {
        XCTAssertEqual(ActivityType.work, focusTimer.getActivity())
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
