//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by Владимир Колодезников on 08.10.2020.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
    
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Baz")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }

    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "view is not nil")
        XCTAssertNotNil(presenter, "view is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Baz Baz")
    }
    
    func testPersonModel() {
        XCTAssertNotNil(person.firstName, "Baz")
        XCTAssertNotNil(person.lastName, "Bar")
    }
}
