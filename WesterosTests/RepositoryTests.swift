//
//  RepositoryTests.swift
//  WesterosTests
//
//  Created by Otger Peidro on 13/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import XCTest
@testable import Westeros

class RepositoryTests: XCTestCase {
    
    var localHouses : [House]!
    var localSeasons : [Season]!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        localHouses = Repository.local.houses
        localSeasons = Repository.local.seasons
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoadRepositoryCreation(){
        XCTAssertNotNil(Repository.local)
    }
    
    func testLocalRepositoryHousesCreation(){
        let houses = Repository.local.houses
        XCTAssertNotNil(houses)
        XCTAssertEqual(houses.count, 3)
    }
    func testLocalRepositpryReturnsArrayofHouses(){
        XCTAssertEqual(localHouses, localHouses.sorted())
    }
    
    func testLocalRepoReturnsHousesByNameCaseInsensitively(){
        let stark = Repository.local.house(named: "sTarK")
        XCTAssertEqual(stark?.name, "Stark")
        
        let grijander = Repository.local.house(named: "Grijander")
        XCTAssertNil(grijander)
    }
    
    func testHouseFiltering(){
        let filtered = Repository.local.houses(filteredBy: {$0.count == 1})
        XCTAssertEqual(filtered.count, 1)
    }
    
    func testLocalRepositorySeasonsCreation(){
        let seasons = Repository.local.seasons
        XCTAssertNotNil(seasons)
        XCTAssertEqual(seasons.count, 7)
    }
    
    func testLocalRepositpryReturnsArrayofSeasons(){
        XCTAssertEqual(localSeasons, localSeasons.sorted())
    }
    
    func testLocalRepoReturnsSeasonsByNameCaseInsensitively(){
        let season1 = Repository.local.season(named: "A Song of Ice AND Fire")
        XCTAssertEqual(season1?.name, "A Song of Ice and Fire")
        
        let grijander = Repository.local.season(named: "Grijander")
        XCTAssertNil(grijander)
    }
    
    func testSeasonFiltering(){
        let filtered = Repository.local.seasons(filteredBy: {$0.count == 10})
        XCTAssertEqual(filtered.count, 4)
    }
    
}
