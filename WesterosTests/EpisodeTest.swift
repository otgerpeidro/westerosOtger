//
//  EpisodeTest.swift
//  WesterosTests
//
//  Created by Otger Peidro on 28/11/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import XCTest
@testable import Westeros

class EpisodeTest: XCTestCase {
    
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
    var episode10Season1 : Episode!
    
    var episode1Season2 : Episode!
    var episode2Season2 : Episode!
    var episode3Season2 : Episode!
    var episode4Season2 : Episode!
    var episode5Season2 : Episode!
    var episode6Season2 : Episode!
    var episode7Season2 : Episode!
    var episode8Season2 : Episode!
    var episode9Season2 : Episode!
    var episode10Season2 : Episode!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        formatter.dateFormat = "yyyy/MM/dd"
        
        season1 = Repository.local.season(named: "A Song of Ice and Fire")
        let airDateEpisode1Season1 = formatter.date(from: "2011/04/17")
        episode1Season1 = Episode(title: "Winter Is Coming", airDate: airDateEpisode1Season1!, season: season1!)
        let airDateEpisode2Season1 = formatter.date(from: "2011/04/24")
        episode2Season1 = Episode(title: "The Kingsroad", airDate: airDateEpisode2Season1!, season: season1!)
        let airDateEpisode3Season1 = formatter.date(from: "2011/05/01")
        episode3Season1 = Episode(title: "Lord Snow", airDate: airDateEpisode3Season1!, season: season1!)
        let airDateEpisode4Season1 = formatter.date(from: "2011/05/08")
        episode4Season1 = Episode(title: "Cripples, Bastards, and Broken Things", airDate: airDateEpisode4Season1!, season: season1!)
        let airDateEpisode5Season1 = formatter.date(from: "2011/05/15")
        episode5Season1 = Episode(title: "The Wolf and the Lion", airDate: airDateEpisode5Season1!, season: season1!)
        let airDateEpisode6Season1 = formatter.date(from: "2011/05/22")
        episode6Season1 = Episode(title: "A Golden Crown", airDate: airDateEpisode6Season1!, season: season1!)
        let airDateEpisode7Season1 = formatter.date(from: "2011/05/29")
        episode7Season1 = Episode(title: "You Win or You Die", airDate: airDateEpisode7Season1!, season: season1!)
        let airDateEpisode8Season1 = formatter.date(from: "2011/06/05")
        episode8Season1 = Episode(title: "The Pointy End", airDate: airDateEpisode8Season1!, season: season1!)
        let airDateEpisode9Season1 = formatter.date(from: "2011/06/12")
        episode9Season1 = Episode(title: "Baelor", airDate: airDateEpisode9Season1!, season: season1!)
        let airDateEpisode10Season1 = formatter.date(from: "2011/06/19")
        episode10Season1 = Episode(title: "Fire and Blood", airDate: airDateEpisode10Season1!, season: season1!)

        season2 = Repository.local.season(named: "A Clash of Kings")
        let airDateEpisode1Season2 = formatter.date(from: "2012/04/01")
        episode1Season2 = Episode(title: "The North Remembers", airDate: airDateEpisode1Season2!, season: season2!)
        let airDateEpisode2Season2 = formatter.date(from: "2012/04/08")
        episode2Season2 = Episode(title: "The Night Lands", airDate: airDateEpisode2Season2!, season: season2!)
        let airDateEpisode3Season2 = formatter.date(from: "2012/04/15")
        episode3Season2 = Episode(title: "What Is Dead May Never Die", airDate: airDateEpisode3Season2!, season: season2!)
        let airDateEpisode4Season2 = formatter.date(from: "2012/04/22")
        episode4Season2 = Episode(title: "Garden of Bones", airDate: airDateEpisode4Season2!, season: season2!)
        let airDateEpisode5Season2 = formatter.date(from: "2012/04/29")
        episode5Season2 = Episode(title: "The Ghost of Harrenhal", airDate: airDateEpisode5Season2!, season: season2!)
        let airDateEpisode6Season2 = formatter.date(from: "2012/05/06")
        episode6Season2 = Episode(title: "The Old Gods and the New", airDate: airDateEpisode6Season2!, season: season2!)
        let airDateEpisode7Season2 = formatter.date(from: "2012/05/13")
        episode7Season2 = Episode(title: "A Man Without Honor", airDate: airDateEpisode7Season2!, season: season2!)
        let airDateEpisode8Season2 = formatter.date(from: "2012/05/20")
        episode8Season2 = Episode(title: "The Prince of Winterfell", airDate: airDateEpisode8Season2!, season: season2!)
        let airDateEpisode9Season2 = formatter.date(from: "2012/05/27")
        episode9Season2 = Episode(title: "Blackwater", airDate: airDateEpisode9Season2!, season: season2!)
        let airDateEpisode10Season2 = formatter.date(from: "2012/06/03")
        episode10Season2 = Episode(title: "Valar Morghulis", airDate: airDateEpisode10Season2!, season: season2!)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEpisodeExistence(){

        let someDateTime = formatter.date(from: "2011/04/17")
        let episode1 = Episode(title:"Winter Is Coming", airDate:someDateTime!, season: season1)
        XCTAssertNotNil(episode1)
    }
    func testEpisodeEquality(){
        
        // Identidad
        XCTAssertEqual(episode1Season1, episode1Season1)
        
        // Igualdad
        let airDateEp1Sea1 = formatter.date(from: "2011/04/17")
        let ep1Sea1 = Episode(title: "Winter Is Coming", airDate: airDateEp1Sea1!, season: season1)
        
        XCTAssertEqual(ep1Sea1, episode1Season1)
        // Desigualdad
        XCTAssertNotEqual(episode1Season1, episode1Season2)
        
    }
    
    func testEpisodeHashable(){
        XCTAssertNotNil(episode1Season1.hashValue)
    }
    
    func testEpisodeComparable(){
        XCTAssertLessThan(episode1Season1, episode2Season1)
    }
}
