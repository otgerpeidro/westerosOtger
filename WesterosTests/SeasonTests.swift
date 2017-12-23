//
//  SeasonTests.swift
//  WesterosTests
//
//  Created by Otger Peidro on 28/11/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import XCTest
@testable import Westeros

class SeasonTests: XCTestCase {
    
    let formatter = DateFormatter()
    
    
    var season1 : Season!
    var season2 : Season!
    var season3 : Season!
    var season4 : Season!
    var season5 : Season!
    var season6 : Season!
    var season7 : Season!
    
    var episode1Season1 : Episode!
    var episode2Season1 : Episode!
    var episode3Season1 : Episode!
    var episode4Season1 : Episode!
    var episode5Season1 : Episode!
    var episode6Season1 : Episode!
    var episode7Season1 : Episode!
    var episode8Season1 : Episode!
    var episode9Season1 : Episode!
    
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        formatter.dateFormat = "yyyy/MM/dd"
        season1 = Repository.local.season(named: "A Song of Ice and Fire")
        season2 = Repository.local.season(named: "A Clash of Kings")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSeasonExistence(){
     
        XCTAssertNotNil(season1)
    }
    
    
    func testSeasonEquility(){
        
        // Identidad
        XCTAssertEqual(season1, season1)
        
        // Igualdad
        let someDaTi1 = formatter.date(from: "2011/04/11")
        let urlsea1 = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_1")
        let sea1 = Season(name: "A Song of Ice and Fire", numEpisodes: 10, premieredDate: someDaTi1!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_1.jpg"), url: urlsea1!)
        print(season1)
        XCTAssertEqual(sea1, season1)
        
        // Desigualdad
        XCTAssertNotEqual(season1, season2)
    }
    
    func testSeasonHashable(){
        
        XCTAssertNotNil(season1.hashValue)
    }
    
    func testSeasonComparison(){
        
        XCTAssertLessThan(season1, season2)
    }
    
    func testCustomStringConvertible() {
        XCTAssertEqual(season1.name, "A Song of Ice and Fire")
    }
}
