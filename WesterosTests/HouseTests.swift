//
//  HouseTests.swift
//  WesterosTests
//
//  Created by Otger Peidro on 12/10/17.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import XCTest
@testable import Westeros

class HouseTests: XCTestCase {
    
    var starkHouse : House!
    var lannisterHouse : House!
    
    var starkSigil : Sigil!
    var lannisterSigil : Sigil!
    
    var robb : Person!
    var arya : Person!
    var tyrion : Person!
    
    
    override func setUp() {
        super.setUp()
        
        
        starkHouse = Repository.local.house(named: "Stark")
        lannisterHouse = Repository.local.house(named: "Lannister")
        
        starkSigil = starkHouse.sigil
        lannisterSigil = lannisterHouse.sigil
        
        robb = Person(name: "Robb", alias: "The young wolf", house: starkHouse)
        arya = Person(name: "Arya", house: starkHouse)
        tyrion = Person(name: "Tyrion", alias: "The Imp", house: lannisterHouse)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHouseExistence(){
        

        XCTAssertNotNil(starkHouse)
    }
    
    func testSigilExistence(){
        
        XCTAssertNotNil(starkSigil)

        XCTAssertNotNil(lannisterSigil)
    }
    
    func testAddPErsons(){
        //XCTAssertEqual(starkHouse.count, 0)
        //starkHouse.add(person: robb)
        
        //XCTAssertEqual(starkHouse.count, 1)
        //starkHouse.add(person: arya)
        
        XCTAssertEqual(starkHouse.count, 2)

        starkHouse.add(person: tyrion)
        XCTAssertEqual(starkHouse.count, 2)
    }
    
    
    func testHouseEquality(){
        
        // Identidad
        XCTAssertEqual(starkHouse, starkHouse)
        
        // Igualdad
        let jinxed = House(name: "Stark", sigil: starkSigil, words: "Winter is coming!", url: URL(string: "https://awoiaf.westeros.org/index.php/House_Stark")!)
        jinxed.add(person: arya)
        jinxed.add(person: robb)
        
        XCTAssertEqual(jinxed, starkHouse)
        
        // Desigualdad
        XCTAssertNotEqual(starkHouse, lannisterHouse)
        
        
    }
    
    func testHashable() {
        

        XCTAssertNotNil(starkHouse.hashValue)
        
    }
    
    func testHouseComparison(){
        
        XCTAssertLessThan(lannisterHouse, starkHouse)
    }
    
}

