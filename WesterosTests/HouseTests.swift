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
    
    var starkImage : UIImage!
    var lannisterImage : UIImage!
    
    var starkSigil : Sigil!
    var lannisterSigil : Sigil!
    
    var starkHouse : House!
    var lannisterHouse : House!
    
    var robb : Person!
    var arya : Person!
    var tyrion : Person!
    
    
    override func setUp() {
        super.setUp()
        
        starkImage = #imageLiteral(resourceName: "codeIsComing.png")
        lannisterImage = #imageLiteral(resourceName: "lannister.jpg")
        
        starkSigil = Sigil(image: starkImage, description: "Direwolf")
        lannisterSigil = Sigil(image: lannisterImage, description:"Rampant Lion")
        
        starkHouse = House(name: "Stark", sigil: starkSigil, words: "Winter is coming!")
        lannisterHouse = House(name: "Lannister", sigil: lannisterSigil, words: "Hear me roar!")
        
        robb = Person(name: "Robb", alias: "The young wolf", house: starkHouse)
        arya = Person(name: "Arya", house: starkHouse)
        tyrion = Person(name: "Tyrion", alias: "The Imp", house: lannisterHouse)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHouseExistence(){
        
        let starkSigil = Sigil(image: #imageLiteral(resourceName: "codeIsComing.png"), description: "Direwolf")
        let stark =  House(name: "Stark", sigil: starkSigil, words: "Winter is coming!")

        XCTAssertNotNil(stark)
    }
    
    func testSigilExistence(){

        let starkSigil = Sigil(image: #imageLiteral(resourceName: "codeIsComing.png"), description: "Direwolf")
        XCTAssertNotNil(starkSigil)

        let lannisterSigil = Sigil(image: #imageLiteral(resourceName: "lannister.jpg"), description: "Rampant Lion")

        XCTAssertNotNil(lannisterSigil)
    }
    
    func testAddPErsons(){
        XCTAssertEqual(starkHouse.count, 0)
        starkHouse.add(person: robb)
        
        XCTAssertEqual(starkHouse.count, 1)
        starkHouse.add(person: arya)
        
        XCTAssertEqual(starkHouse.count, 2)

        starkHouse.add(person: tyrion)
        XCTAssertEqual(starkHouse.count, 2)
    }
    
    
    func testHouseEquality(){
        
        // Identidad
        XCTAssertEqual(starkHouse, starkHouse)
        
        // Igualdad
        let jinxed = House(name: "Stark", sigil: starkSigil, words: "Winter is coming!")
        
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
