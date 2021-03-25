//
//  ViewModelTests.swift
//  TestingBasicsTests
//
//  Created by Greg Price on 25/03/2021.
//

import XCTest
@testable import TestingBasics

class ViewModelTests: XCTestCase {

    // ('sut' stands for system under test)
    private var sut: ViewModel!
    
    // a fresh `sut` is created before each test case runs
    override func setUp() {
        sut = ViewModel (
            items: ["1", "2", "3", "4", "Hello!"],
            alertTitle: "Wahoo",
            oddIndexMessage: "Odd",
            evenIndexMessage: "Even")
    }
    
    func testNumberOfRows() {
        XCTAssertEqual(sut.numberOfRows, 5)
    }
    
    func testItemAtIndex() {
        XCTAssertEqual(sut.item(at: 0), "1")
        XCTAssertEqual(sut.item(at: 1), "2")
        XCTAssertEqual(sut.item(at: 2), "3")
        XCTAssertEqual(sut.item(at: 3), "4")
        XCTAssertEqual(sut.item(at: 4), "Hello!")
    }

    func testAlertForItemIsOddInt() {
        let alert = sut.alert(for: 0) // item is "1"
        XCTAssertEqual(alert.title, "Wahoo")
        XCTAssertEqual(alert.message, "Odd")
    }

    func testAlertForItemIsEvenInt() {
        let alert = sut.alert(for: 3) // item is "4"
        XCTAssertEqual(alert.title, "Wahoo")
        XCTAssertEqual(alert.message, "Even")
    }

    func testAlertForItemIsNilInt() {
        let alert = sut.alert(for: 4) // item is "Hello!"
        XCTAssertEqual(alert.title, "Wahoo")
        XCTAssertEqual(alert.message, "Hello!")
    }
}
